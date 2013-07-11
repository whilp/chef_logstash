require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputFile < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def gzip(arg=nil)
        set_or_return(:gzip, arg, :kind_of => [TrueClass, FalseClass])
      end

      def flush_interval(arg=nil)
        set_or_return(:flush_interval, arg, :kind_of => [Fixnum])
      end

      def max_size(arg=nil)
        set_or_return(:max_size, arg, :kind_of => [String])
      end

      def path(arg=nil)
        set_or_return(:path, arg, :kind_of => [String])
      end

      def message_format(arg=nil)
        set_or_return(:message_format, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
