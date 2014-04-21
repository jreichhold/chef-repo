#
# Author:: Jonathan Reichhold (<jreichhold@gmail.com>)
# Cookbook Name:: apache_storm
# Attribute:: default
#
#http://www.dsgnwrld.com/am/incubator/storm/apache-storm-0.9.1-incubating/apache-storm-0.9.1-incubating.tar.gz
#http://www.apache.org/dyn/closer.cgi/incubator/storm/apache-storm-0.9.1-incubating/apache-storm-0.9.1-incubating.tar.gz
#

default['apache_storm']['version'] = "0.9.1-incubating"
default['apache_storm']['root_dir'] = "/opt/storm"
default['apache_storm']['log_dir'] = "/var/log/storm"
default['apache_storm']['cluster_role'] = ""
default['apache_storm']['download_url'] = "http://www.dsgnwrld.com/am/incubator/storm"

# general storm attributes
default['apache_storm']['java_lib_path'] = "/usr/local/lib:/opt/local/lib:/usr/lib"
default['apache_storm']['local_dir'] = "/mnt/storm"
default['apache_storm']['local_mode_zmq'] = "false"
default['apache_storm']['cluster_mode'] = "distributed"

# zookeeper attributes
default['apache_storm']['zookeeper']['port'] = 2181
default['apache_storm']['zookeeper']['root'] = "/storm"
default['apache_storm']['zookeeper']['session_timeout'] = 30000
default['apache_storm']['zookeeper']['retry_times'] = 60
default['apache_storm']['zookeeper']['retry_interval'] = 5000

# supervisor attributes
default['apache_storm']['supervisor']['workers'] = 4
default['apache_storm']['supervisor']['childopts'] = "-Xmx1024m"
default['apache_storm']['supervisor']['worker_start_timeout'] = 120
default['apache_storm']['supervisor']['worker_timeout_secs'] = 30
default['apache_storm']['supervisor']['monitor_frequecy_secs'] = 3
default['apache_storm']['supervisor']['heartbeat_frequency_secs'] = 5
default['apache_storm']['supervisor']['enable'] = true

# worker attributes
default['apache_storm']['worker']['childopts'] = "-Xmx1280m -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:NewSize=128m -XX:CMSInitiatingOccupancyFraction=70 -XX:-CMSConcurrentMTEnabled"
default['apache_storm']['worker']['heartbeat_frequency_secs'] = 1
default['apache_storm']['task']['heartbeat_frequency_secs'] = 3
default['apache_storm']['task']['refresh_poll_secs'] = 10
default['apache_storm']['zmq']['threads'] = 1
default['apache_storm']['zmq']['longer_millis'] = 5000

# nimbus attributes
default['apache_storm']['nimbus']['host'] = ""
default['apache_storm']['nimbus']['thrift_port'] = 6627
default['apache_storm']['nimbus']['childopts'] = "-Xmx1024m"
default['apache_storm']['nimbus']['task_timeout_secs'] = 30
default['apache_storm']['nimbus']['supervisor_timeout_secs'] = 60
default['apache_storm']['nimbus']['monitor_freq_secs'] = 10
default['apache_storm']['nimbus']['cleanup_inbox_freq_secs'] = 600
default['apache_storm']['nimbus']['inbox_jar_expiration_secs'] = 3600
default['apache_storm']['nimbus']['task_launch_secs'] = 120
default['apache_storm']['nimbus']['reassign'] = true
default['apache_storm']['nimbus']['file_copy_expiration_secs'] = 600

# ui attributes
default['apache_storm']['ui']['port'] = 8080
default['apache_storm']['ui']['childopts'] = "-Xmx768m"

# drpc attributes
default['apache_storm']['drpc']['port'] = 3772
default['apache_storm']['drpc']['invocations_port'] = 3773
default['apache_storm']['drpc']['request_timeout_secs'] = 600

# transactional attributes
default['apache_storm']['transactional']['zookeeper']['root'] = "/storm-transactional"
default['apache_storm']['transactional']['zookeeper']['port'] = 2181

# topology attributes
default['apache_storm']['topology']['debug'] = false
default['apache_storm']['topology']['optimize'] = true
default['apache_storm']['topology']['workers'] = 1
default['apache_storm']['topology']['acker_executors'] = 1
default['apache_storm']['topology']['acker_tasks'] = "null"
default['apache_storm']['topology']['tasks'] = "null"
default['apache_storm']['topology']['message_timeout_secs'] = 30
default['apache_storm']['topology']['skip_missing_kryo_registrations'] = false
default['apache_storm']['topology']['max_task_parallelism'] = "null"
default['apache_storm']['topology']['max_spout_pending'] = "null"
default['apache_storm']['topology']['state_synchronization_timeout_secs'] = 60
default['apache_storm']['topology']['stats_sample_rate'] = 0.05
default['apache_storm']['topology']['fall_back_on_java_serialization'] = true
default['apache_storm']['topology']['worker_childopts'] = "null"
