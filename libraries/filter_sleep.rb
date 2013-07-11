require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashFilterSleep < Chef::Resource::LogstashConfig

      def remove_tag(arg=nil)
        set_or_return(:remove_tag, arg, :kind_of => [Array])
      end

      def add_tag(arg=nil)
        set_or_return(:add_tag, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def replay(arg=nil)
        set_or_return(:replay, arg, :kind_of => [TrueClass, FalseClass])
      end

      def add_field(arg=nil)
        set_or_return(:add_field, arg, :kind_of => [Hash])
      end

      def every(arg=nil)
        set_or_return(:every, arg, :kind_of => [String])
      end

      def time(arg=nil)
        set_or_return(:time, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
