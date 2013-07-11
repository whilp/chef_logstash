require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputStatsd < Chef::Resource::LogstashConfig

      def increment(arg=nil)
        set_or_return(:increment, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def decrement(arg=nil)
        set_or_return(:decrement, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def debug(arg=nil)
        set_or_return(:debug, arg, :kind_of => [TrueClass, FalseClass])
      end

      def count(arg=nil)
        set_or_return(:count, arg, :kind_of => [Hash])
      end

      def timing(arg=nil)
        set_or_return(:timing, arg, :kind_of => [Hash])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def sample_rate(arg=nil)
        set_or_return(:sample_rate, arg, :kind_of => [Fixnum])
      end

      def namespace(arg=nil)
        set_or_return(:namespace, arg, :kind_of => [String])
      end

      def sender(arg=nil)
        set_or_return(:sender, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
