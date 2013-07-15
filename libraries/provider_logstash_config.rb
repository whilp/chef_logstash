require 'chef/provider'
require File.expand_path('../helpers', __FILE__)

project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + '{input,filter,output}*.rb') {|file| require file}

class Chef
  class Provider
    class LogstashConfig < Chef::Provider

      include Helpers::Logstash

      attr_reader :plugin_class

      def initialize(new_resource, run_context=nil)
        @new_resource = new_resource
        @run_context = run_context
        @plugin_class = lookup_plugin_class # I think this is fubar
        super
      end

      def whyrun_supported?
        false
      end

      def load_current_resource
      end

      def action_create
        create_conf_dir
        create_conf_file
        @new_resource.updated_by_last_action(true)
      end

      def action_destroy
        destroy_conf_file
        destroy_conf_dir
        @new_resource.updated_by_last_action(true)
      end

      def action_enable
      end

      private

      def conf_dir
        @conf_dir ||= instance.conf_dir
      end

      def conf_file
        @conf_file ||= logstash_config_file(conf_dir, @new_resource.instance)
      end

      def lookup_config_file
        ::File.join('', conf_dir, "#{ @new_resource.name }.conf")
      end

      def lookup_conf_dir
        lookup_logstash_confdir(@new_resource.instance, @run_context)
      end

      def lookup_plugin_class
        klass = "Chef::Resource::LogstashConfig#{ @plugin_type }#{ @plugin }"

        klass.split('::').reduce(Object) {|kls, t| kls.const_get(t) }
      end

      def plugin_object
        lookup_resource(@new_resource.plugin_type, @plugin_name, @run_context) || @plugin_class.new(name, @run_context)
      end

      # Instantiate plugin subclass
      def configure_plugin(arg)
        begin
          if arg.is_a?(Enumerable)
            # Iterate over the hash of resource arguments.
            arg.each do |k, v|
              plugin_object.send(k, v)
            end
          end
        rescue RuntimeError => e
          puts "some bad shit happened: #{ e }"
        end
      end

      def create_config_file
        f = Chef::Resource::File.new(conf_file, @run_context)
        f.owner 'root'
        f.group 'root'
        f.mode 00755
        f.content render_config_file
        f.run_action(:create)
      end

      def destroy_config_file
        ls_dir = logstash_conf_dir(conf_dir, @new_resource.name)
        directory logstash_config_file(ls_dir, @new_resource.name) do
          action :delete
        end
      end

      def render_config_file
        'render_config_file contents should be here.'
      end

    end
  end
end
