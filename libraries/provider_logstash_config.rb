require 'chef/provider'
require File.expand_path('../helpers', __FILE__)

project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + '{input,filter,output}*.rb') {|file| require file}

class Chef
  class Provider
    class LogstashConfig < Chef::Provider

      include Helpers::Logstash

      def initialize(new_resource, run_context=nil)
        @new_resource = new_resource
        @run_context = run_context

        @conf_dir = conf_dir
        @conf_file = conf_file
        @instance = instance
        @plugin_class = plugin_class
        @plugin_object = plugin_object
        super
      end

      def whyrun_supported?
        false
      end

      def load_current_resource
      end

      def action_create
        create_conf_dir
        configure_plugin(@new_resource.plugin_config)
        create_conf_file
        @new_resource.updated_by_last_action(true)
      end

      def action_destroy
        destroy_conf_file
        destroy_conf_dir
        @new_resource.updated_by_last_action(true)
      end

      def action_enable
        instance.run_action(:enable)
      end

      private

      def conf_dir
        @conf_dir ||= instance.conf_dir
      end

      def conf_file
        @conf_file ||= logstash_config_file(conf_dir, @new_resource.name)
      end

      def instance
        @instance ||= lookup_instance(@new_resource.instance, @run_context)
      end

      def plugin_object
        @plugin_object ||= plugin_class.new(@new_resource.name, @run_context)
      end

      def plugin_class
        @plugin_class ||= lookup_plugin_class
      end

      def plugin_type
        @plugin_type ||= @new_resource.plugin_type.capitalize
      end

      def plugin
        @plugin ||= @new_resource.plugin.capitalize
      end

      def lookup_plugin_class
        klass = "Chef::Resource::Logstash#{ plugin_type }#{ plugin }"
        klass.split('::').reduce(Object) {|kls, t| kls.const_get(t) }
      end

      # I don't think we need to lookup_resource here. We probably want use a
      # instance variable or do @plugin_class.new
      def plugin_object
        lookup_resource(@new_resource.plugin_type, @plugin_name, @run_context) || @plugin_class.new(name, @run_context)
      end

      def render_conf_file(options=true)
        'render_conf_file contents should be here.'
      end

      # Instantiate plugin subclass
      # @param arg
      def configure_plugin(arg)
        begin
          # Iterate over the hash of resource arguments.
          arg.each do |k, v|
            plugin_object.send(k, v)
          end
        rescue RuntimeError => e
          puts "There was an issue: #{ e }"
        end
      end

      def create_conf_dir
        dir = Chef::Resource::Directory.new(conf_dir, @run_context)
        dir.owner 'root'
        dir.group 'root'
        dir.mode 00755
        dir.run_action(:create)
      end

      def create_conf_file
        file = Chef::Resource::File.new(conf_file, @run_context)
        file.owner 'root'
        file.group 'root'
        file.mode 00644
        file.content render_conf_file
        file.run_action(:create)
      end

      def destroy_conf_file
        file = Chef::Resource::File.new(conf_file, @run_context)
        file.run_action(:destroy)
      end

      def destroy_conf_dir
        dir = Chef::Resource::Directory.new(conf_dir, @run_context)
        dir.run_action(:delete)
      end

      # FIXME
      # Looks for config files in the config directory that are not owned
      # by any logstash_config resources.
      # @param name type [String] The unique name of that resource.
      def logstash_clean_configs(name)
        i = logstash_has_configs?(conf_dir)
        i.each do |config|
          unless lookup_resource(:logstash_config, i)
            logstash_delete_old_config(::File.join('', conf_dir, i))
          end
        end
      end

    end
  end
end

class Logstash
  class ConfigGenerate
    def initalize(*args)
    end

    def render
    end

    private

    def cfg_string(key, value)
      "#{ key } => \"#{ value }\""
    end

    def cfg_hash_or_array(key, value)
      "#{ key } => [#{ value.to_a.flatten }]"
    end

    def cfg_number_or_boolean(key, value)
      "#{ key } => #{ value }"
    end

  end
end
