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
          new_resource.nofiles
          new_resource.state
        end

        def action_create
          fetch_logstash_jar
          create_user_and_group
          create_service_script
          new_resource.updated_by_last_action(true)
        end

        def action_destroy
          enable_service
          new_resource.updated_by_last_action(true)
        end

        def action_enable
          disable_service
          new_resource.updated_by_last_action(true)
        end

        private

        def fetch_logstash_jar
          d = Chef::Resource::Directory.new(new_resource.dst_dir, run_context)
          d.owner 'root'
          d.group 'root'
          d.mode  00755
          d.run_action(:create)

          jar_path = logstash_jar_with_path(new_resource.dst_dir, new_resource.version)
          r = Chef::Resource::Remote_file("logstash_#{ new_resource.version }", run_context)
          r.path     jar_path
          r.checksum new_resource.checksum
          r.source   new_resource.url
          r.owner    'root'
          r.group    'root'
          r.mode     00644
          r.run_action(:create)
        end

        def create_user_and_group
          g = Chef::Resource::Group(new_resource.group, run_context)
          g.run_action(:create)

          u = Chef::Resource::User(new_resource.user, run_context)
          u.gid new_resource.group
          u.run_action(:create)
        end

        def create_service_script
          jar_path = logstash_jar_with_path(new_resource.dst_dir, new_resource.version)

          r = Chef::Resource::Runit_service(logstash_service(new_resource.name), run_context)
          r.cookbook          'logstash'
          r.run_template_name 'logstash'
          r.log_template_name 'logstash'
          r.action            :nothing
          r.options({
              :conf_dir => new_resource.conf_dir,
              :jar_path => jar_path,
              :name     => new_resource.name,
              :nofiles  => new_resource.nofiles,
              :user     => new_resource.user,
            })
          r.run_action(:create)
        end

        def enable_service
          ls_dir = logstash_conf_dir(new_resource.conf_dir, new_resource.name)
          ls_svc = logstash_service(new_resource.name)

          if ::File.directory?(ls_dir)
            if logstash_has_configs?(ls_dir)
              s = Chef::Resource::Service(ls_svc, run_context)
              s.run_action([:enable, :start])
            else
              Chef::Log.info("#{ ls_dir } has no configs. Not enabling #{ ls_svc }.")
            end
          else
            Chef::Log.info("#{ ls_dir } does not exist. Not enabling #{ ls_svc }.")
          end
        end

        def disable_service
          s = Chef::Resource::Service(logstash_service(new_resource.name), run_context)
          s.run_action([:disable, :stop])
        end

      end
    end
  end
end
