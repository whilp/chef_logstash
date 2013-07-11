require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputMongodb < Chef::Resource::LogstashConfig

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def isodate(arg=nil)
        set_or_return(:isodate, arg, :kind_of => [TrueClass, FalseClass])
      end

      def retry_delay(arg=nil)
        set_or_return(:retry_delay, arg, :kind_of => [Fixnum])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def password(arg=nil)
        set_or_return(:password, arg, :kind_of => [String])
      end

      def collection(arg=nil)
        set_or_return(:collection, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

      def database(arg=nil)
        set_or_return(:database, arg, :kind_of => [String])
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
