require 'chef/provider'

class Chef
  class Provider
    class Logstash
      class Instance < Chef::Provider

        def initialize(new_resource, run_context=nil)
          super
        end

        def whyrun_supported?
          false
        end

        def load_current_resource
          new_resource.user
          new_resource.group
          new_resource.conf_dir
          new_resource.dst_dir
          new_resource.version
          new_resource.url
          new_resource.checksum
          new_resource.install_type
          new_resource.install_options
          new_resource.service_type
          new_resource.service_options
          new_resource.state
        end

        def action_create
          fetch_logstash_jar
          create_user
          create_group
          create_service_script
          new_resource.updated_by_last_action(true)
        end

        def action_destroy
          disable_service
          new_resource.updated_by_last_action(true)
        end

        def action_enable
          enable_service
          new_resource.updated_by_last_action(true)
        end

        private

        def create_user
          g = Chef::Resource::Group(new_resource.group, run_context)
          g.run_action(:create)

        end

        def create_group
          u = Chef::Resource::User(new_resource.user, run_context)
          u.gid new_resource.group
          u.run_action(:create)
        end

        def create_instance
        end

        def enable_instance
        end

        def destroy_instance
        end

      end
    end
  end
end
