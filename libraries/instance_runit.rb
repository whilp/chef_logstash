
require File.expand_path('../helpers', __FILE__)

class Runit

  include Helpers

  def initialize(new_resource, run_context=nil)
    @new_resource = new_resource
    @run_context = run_context
  end

      def create
        create_service_script
      end

      def enable
        enable_service
      end

      def disable
        disable_service
      end

      private

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
            :nofiles  => new_resource.service_options,
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
