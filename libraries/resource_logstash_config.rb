
require 'chef/resource'
require 'chef/mixin/securable'
require File.expand_path('../inputs', __FILE__)

class Chef
  class Resource
    class LogstashConfig < Chef::Resource

      include Chef::Mixin::Securable

      attr_reader :plugin_name, :plugin_name

      def initialize(name, run_context=nil)
        super
        @resource_name = :logstash_config
        @provider = Chef::Provider::LogstashConfig
        @action = :create
        @allowed_actions = [:create, :destroy, :nothing]

        @plugin_name = nil
        @plugin_type = nil
      end

      def instance(arg=nil)
        set_or_return(:instance, arg, :kind_of => [String])
      end

      def plugin_type(arg=nil)
        set_or_return(:plugin_type, arg, :kind_of => [String])
      end

      def plugin_name(arg=nil)
        set_or_return(:plugin_name, arg, :kind_of => [String])
      end

      def plugin_config(arg=nil)
        set_or_return(:plugin_config, arg, :kind_of => [Hash])
      end

      def plugin_class
        Object.const_get('LogstashConfig').const_get(@plugin_type).const_get(@plugin_name)
      end

      # Instantiate plugin subclass
      def config(arg={})
        c = plugin_class.new(name, run_context)
        # Iterate over the hash of resource arguments.
        arg.each do |k, v|
          c.send(k, v)
        end
      end

    end
  end
end
