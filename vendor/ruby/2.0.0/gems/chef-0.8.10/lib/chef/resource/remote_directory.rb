#
# Author:: Adam Jacob (<adam@opscode.com>)
# Copyright:: Copyright (c) 2008 Opscode, Inc.
# License:: Apache License, Version 2.0
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
#

require 'chef/resource/directory'

class Chef
  class Resource
    class RemoteDirectory < Chef::Resource::Directory
            
      def initialize(name, collection=nil, node=nil)
        super(name, collection, node)
        @resource_name = :remote_directory
        @path = name
        @source = ::File.basename(name)
        @delete = false
        @action = :create
        @recursive = true
        @files_backup = 5
        @files_owner = nil
        @files_group = nil
        @files_mode = 0644
        @allowed_actions.push(:create, :delete)
        @cookbook = nil
      end
      
      def source(args=nil)
        set_or_return(
          :source,
          args,
          :kind_of => String
        )
      end
      
      def files_backup(arg=nil)
        set_or_return(
          :files_backup,
          arg,
          :kind_of => [ Integer, FalseClass ]
        )
      end
      
      def files_group(arg=nil)
        set_or_return(
          :files_group,
          arg,
          :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
        )
      end
      
      def files_mode(arg=nil)
        set_or_return(
          :files_mode,
          arg,
          :regex => /^\d{3,4}$/
        )
      end
      
      def files_owner(arg=nil)
        set_or_return(
          :files_owner,
          arg,
          :regex => [ /^([a-z]|[A-Z]|[0-9]|_|-)+$/, /^\d+$/ ]
        )
      end
      
      def cookbook(args=nil)
        set_or_return(
          :cookbook,
          args,
          :kind_of => String
        )
      end
      
    end
  end
end
