#
# Cookbook Name::	kafka
# Description:: Base configuration for Kafka
# Recipe:: default
#
# Copyright 2012, Webtrends, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# == Recipes
include_recipe "java"
include_recipe "runit"

java_home   = node['java']['java_home']

user = node[:kafka][:user]
group = node[:kafka][:group]

if node[:kafka][:brokers].nil? || node[:kafka][:brokers].empty?
		node.default[:kafka][:broker_id] = node[:ipaddress].gsub(".","")
else
	  node.default[:kafka][:broker_id] = (node[:kafka][:brokers].index{|broker| broker == node[:fqdn] || broker == node[:ipaddress] || broker == node[:hostname]} ) + 1
end

if node[:kafka][:broker_host_name].nil? || node[:kafka][:broker_host_name].empty?
		node.default[:kafka][:broker_host_name] = node[:fqdn]
end

log "Broker id: #{node[:kafka][:broker_id]}"
log "Broker name: #{node[:kafka][:broker_host_name]}"

# == Users

# setup kafka group
group group do
end

# setup kafka user
user user do
  comment "Kafka user"
  gid "kafka"
  home "/home/kafka"
  shell "/bin/noshell"
  supports :manage_home => false
end

# create the install directory
install_dir = node[:kafka][:install_dir]

directory "#{install_dir}" do
  owner "root"
  group "root"
  mode 00755
  recursive true
  action :create
end

#directory "#{install_dir}/bin" do
#  owner "root"
#  group "root"
#  mode 00755
#  recursive true
#  action :create
#end

#directory "#{install_dir}/config" do
#  owner "root"
#  group "root"
#  mode 00755
#  recursive true
#  action :create
#end

# create the log directory
directory node[:kafka][:log_dir] do
  owner   user
  group   group
  mode    00755
  recursive true
  action :create
end

# create the data directory
directory node[:kafka][:data_dir] do
  owner   user
  group   group
  mode    00755
  recursive true
  action :create
end

# pull the remote file only if we create the directory
tarball = "kafka_#{node[:kafka][:scala_version]}-#{node[:kafka][:version]}.tgz"
download_file = "#{node[:kafka][:download_url]}/#{node[:kafka][:version]}/#{tarball}"

remote_file "#{Chef::Config[:file_cache_path]}/#{tarball}" do
  source download_file
  mode 00644
  ## notifies :run, "execute[tar]", :immediately
end

execute "tar" do
  user  "root"
  group "root"
  cwd install_dir
  ## action :nothing
  command "tar zxvf #{Chef::Config[:file_cache_path]}/#{tarball}"
end

# create a link from the specific version to a generic current folder
link "#{install_dir}/bin" do
	to "#{install_dir}/kafka_#{node[:kafka][:scala_version]}-#{node[:kafka][:version]}/bin"
end

# create a link from the specific version to a generic current folder
link "#{install_dir}/libs" do
	to "#{install_dir}/kafka_#{node[:kafka][:scala_version]}-#{node[:kafka][:version]}/libs"
end

# create a link from the specific version to a generic current folder
link "#{install_dir}/logs" do
	to "#{install_dir}/kafka_#{node[:kafka][:scala_version]}-#{node[:kafka][:version]}/logs"
end

# create a link from the specific version to a generic current folder
link "#{install_dir}/config" do
	to "#{install_dir}/kafka_#{node[:kafka][:scala_version]}-#{node[:kafka][:version]}/config"
end

template "#{install_dir}/bin/service-control" do
  source  "service-control.erb"
  owner "root"
  group "root"
  mode  00755
  variables({
    :install_dir => install_dir,
    :log_dir => node[:kafka][:log_dir],
    :java_home => java_home,
    :java_jmx_port => node[:kafka][:jmx_port],
    :java_class => "kafka.Kafka",
    :user => user
  })
end

# grab the zookeeper nodes that are currently available
zookeeper_pairs = Array.new
if not Chef::Config.solo
  search(:node, "role:zookeeper AND chef_environment:#{node.chef_environment}").each do |n|
    zookeeper_pairs << "#{n[:fqdn]}:#{node[:kafka][:zk_client_port]}"
  end
end


%w[server.properties log4j.properties].each do |template_file|
  template "#{install_dir}/config/#{template_file}" do
    source	"#{template_file}.erb"
    owner user
    group group
    mode  00755
    variables({
      :kafka => node[:kafka],
      :zookeeper_pairs => zookeeper_pairs
    })
  end
end

# fix perms and ownership
execute "chmod" do
  command "find #{install_dir} -name bin -prune -o -type f -exec chmod 644 {} \\; && find #{install_dir} -type d -exec chmod 755 {} \\;"
  action :run
end

execute "chown" do
  command "chown -R root:root #{install_dir}"
  action :run
end

execute "chmod" do
	command "chmod -R 755 #{install_dir}/bin"
	action :run
end

# create the runit service
runit_service "kafka" do
  options({
    :log_dir => node[:kafka][:log_dir],
    :install_dir => install_dir,
    :java_home => java_home,
    :user => user
  })
end

# create collectd plugin for kafka JMX objects if collectd has been applied.
if node.attribute?("collectd")
  template "#{node[:collectd][:plugin_conf_dir]}/collectd_kafka-broker.conf" do
    source "collectd_kafka-broker.conf.erb"
    owner "root"
    group "root"
    mode 00644
    notifies :restart, resources(:service => "collectd")
  end
end

# start up Kafka broker
service "kafka" do
  action :start
end
