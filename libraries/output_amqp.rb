require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputAmqp < Chef::Resource::LogstashConfig

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def debug(arg=nil)
        set_or_return(:debug, arg, :kind_of => [TrueClass, FalseClass])
      end

      def verify_ssl(arg=nil)
        set_or_return(:verify_ssl, arg, :kind_of => [TrueClass, FalseClass])
      end

      def persistent(arg=nil)
        set_or_return(:persistent, arg, :kind_of => [TrueClass, FalseClass])
      end

      def durable(arg=nil)
        set_or_return(:durable, arg, :kind_of => [TrueClass, FalseClass])
      end

      def ssl(arg=nil)
        set_or_return(:ssl, arg, :kind_of => [TrueClass, FalseClass])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def exchange_type(arg=nil)
        set_or_return(:exchange_type, arg, :kind_of => [String], :equal_to => %w(fanout direct topic) )
      end

      def password(arg=nil)
        set_or_return(:password, arg, :kind_of => [String])
      end

      def key(arg=nil)
        set_or_return(:key, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def user(arg=nil)
        set_or_return(:user, arg, :kind_of => [String])
      end

      def exchange(arg=nil)
        set_or_return(:exchange, arg, :kind_of => [String])
      end

      def vhost(arg=nil)
        set_or_return(:vhost, arg, :kind_of => [String])
      end

    end
  end
end
