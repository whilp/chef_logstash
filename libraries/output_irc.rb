require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputIrc < Chef::Resource::LogstashConfig

      def channels(arg=nil)
        set_or_return(:channels, arg, :kind_of => [Array])
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

      def secure(arg=nil)
        set_or_return(:secure, arg, :kind_of => [TrueClass, FalseClass])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def password(arg=nil)
        set_or_return(:password, arg, :kind_of => [String])
      end

      def nick(arg=nil)
        set_or_return(:nick, arg, :kind_of => [String])
      end

      def real(arg=nil)
        set_or_return(:real, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

      def format(arg=nil)
        set_or_return(:format, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def user(arg=nil)
        set_or_return(:user, arg, :kind_of => [String])
      end

    end
  end
end
