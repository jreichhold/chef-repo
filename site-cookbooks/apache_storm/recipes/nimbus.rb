#
# Cookbook Name:: apache_storm
# Recipe:: default
#

include_recipe "apache_storm"

java_home = node['java']['java_home']

%w{nimbus stormui}.each do |daemon|
  # control file
  template "#{node['apache_storm']['install_dir']}/bin/#{daemon}-control" do
    source  "#{daemon}-control.erb"
    owner "root"
    group "root"
    mode  00755
    variables({
      :install_dir => node['apache_storm']['install_dir'],
      :log_dir => node['apache_storm']['log_dir'],
      :java_home => java_home
    })
  end

  # runit service
  runit_service daemon do
    options({
      :install_dir => node['apache_storm']['install_dir'],
      :log_dir => node['apache_storm']['log_dir'],
      :user => "storm"
    })
  end
end

service "nimbus"

service "stormui"
