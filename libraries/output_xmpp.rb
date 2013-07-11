require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputXmpp < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def users(arg=nil)
        set_or_return(:users, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def rooms(arg=nil)
        set_or_return(:rooms, arg, :kind_of => [Array])
      end

      def password(arg=nil)
        set_or_return(:password, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def message(arg=nil)
        set_or_return(:message, arg, :kind_of => [String])
      end

      def user(arg=nil)
        set_or_return(:user, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

    end
  end
end
