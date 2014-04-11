#
# Cookbook Name:: apache_storm
# Recipe:: default
#

include_recipe "apache_storm"

java_home = node['java']['java_home']

  # control file
  template "#{node['apache_storm']['install_dir']}/bin/supervisor-control" do
    source  "supervisor-control.erb"
    mode  00755
    variables({
      :install_dir => node['apache_storm']['install_dir'],
      :log_dir => node['apache_storm']['log_dir'],
      :java_home => java_home
    })
  end

  # runit service
  runit_service "supervisor" do
    service_name "supervisor"
    options({
      :install_dir => "#{node['apache_storm']['root_dir']}/current",
      :log_dir => node['apache_storm']['log_dir'],
      :user => "storm"
    })
  end

execute "reload_supervisor" do
  command "sv reload supervisor"
  action :nothing
end

service "supervisor"
