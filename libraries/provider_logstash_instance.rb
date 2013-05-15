require 'chef/provider'
require File.expand_path('../helpers', __FILE__)

dir = File.dirname(File.absolute_path(__FILE__))
::Dir.glob(dir + 'instance_*') { |f| require f }

class Chef
  class Provider
    class LogstashInstance < Chef::Provider

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
        create_instance
        new_resource.updated_by_last_action(true)
      end

      def action_destroy
        destroy_instance
        new_resource.updated_by_last_action(true)
      end

      def action_enable
        enable_instance
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
        install_class = instance_sub_class(new_resource.install_type)
        service_class = instance_sub_class(new_resource.service_type)

        i = install_class.new(new_resource, run_context)
        s = service_class.new(new_resource, run_context)

        i.install
        s.create
      end

      def enable_instance
        service_class = instance_sub_class(new_resource.service_type)
        s = service_class.new(new_resource, run_context)

        s.enable
      end

      def destroy_instance
        install_class = instance_sub_class(new_resource.install_type)
        service_class = instance_sub_class(new_resource.service_type)

        i = install_class.new(new_resource, run_context)
        s = service_class.new(new_resource, run_context)

        s.disable
        i.uninstall
      end

      def instance_sub_class(type)
        klass = "Logstash::Instance::#{ type.capitalize }"

        klass.split('::').reduce(Object) {|kls, t| kls.const_get(t) }
      end

    end
  end
end
