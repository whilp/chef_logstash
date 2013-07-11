require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputMetriccatcher < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def meter(arg=nil)
        set_or_return(:meter, arg, :kind_of => [Hash])
      end

      def gauge(arg=nil)
        set_or_return(:gauge, arg, :kind_of => [Hash])
      end

      def uniform(arg=nil)
        set_or_return(:uniform, arg, :kind_of => [Hash])
      end

      def biased(arg=nil)
        set_or_return(:biased, arg, :kind_of => [Hash])
      end

      def timer(arg=nil)
        set_or_return(:timer, arg, :kind_of => [Hash])
      end

      def counter(arg=nil)
        set_or_return(:counter, arg, :kind_of => [Hash])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

    end
  end
end
