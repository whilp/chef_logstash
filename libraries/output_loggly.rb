require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputLoggly < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def proxy_port(arg=nil)
        set_or_return(:proxy_port, arg, :kind_of => [Fixnum])
      end

      def proxy_password(arg=nil)
        set_or_return(:proxy_password, arg, :kind_of => [String])
      end

      def proxy_host(arg=nil)
        set_or_return(:proxy_host, arg, :kind_of => [String])
      end

      def proto(arg=nil)
        set_or_return(:proto, arg, :kind_of => [String])
      end

      def key(arg=nil)
        set_or_return(:key, arg, :kind_of => [String])
      end

      def proxy_user(arg=nil)
        set_or_return(:proxy_user, arg, :kind_of => [String])
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
