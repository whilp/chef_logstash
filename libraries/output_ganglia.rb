require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputGanglia < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def lifetime(arg=nil)
        set_or_return(:lifetime, arg, :kind_of => [Fixnum])
      end

      def max_interval(arg=nil)
        set_or_return(:max_interval, arg, :kind_of => [Fixnum])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def metric_type(arg=nil)
        set_or_return(:metric_type, arg, :kind_of => [String], :equal_to => %w(string int8 uint8 int16 uint16 int32 uint32 float double) )
      end

      def metric(arg=nil)
        set_or_return(:metric, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def units(arg=nil)
        set_or_return(:units, arg, :kind_of => [String])
      end

      def value(arg=nil)
        set_or_return(:value, arg, :kind_of => [String])
      end

    end
  end
end
