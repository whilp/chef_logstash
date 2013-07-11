require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputGraphite < Chef::Resource::LogstashConfig

      def exclude_metrics(arg=nil)
        set_or_return(:exclude_metrics, arg, :kind_of => [Array])
      end

      def include_metrics(arg=nil)
        set_or_return(:include_metrics, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def fields_are_metrics(arg=nil)
        set_or_return(:fields_are_metrics, arg, :kind_of => [TrueClass, FalseClass])
      end

      def debug(arg=nil)
        set_or_return(:debug, arg, :kind_of => [TrueClass, FalseClass])
      end

      def resend_on_failure(arg=nil)
        set_or_return(:resend_on_failure, arg, :kind_of => [TrueClass, FalseClass])
      end

      def metrics(arg=nil)
        set_or_return(:metrics, arg, :kind_of => [Hash])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def reconnect_interval(arg=nil)
        set_or_return(:reconnect_interval, arg, :kind_of => [Fixnum])
      end

      def metrics_format(arg=nil)
        set_or_return(:metrics_format, arg, :kind_of => [String])
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
