require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashFilterAnonymize < Chef::Resource::LogstashConfig

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def add_tag(arg=nil)
        set_or_return(:add_tag, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def remove_tag(arg=nil)
        set_or_return(:remove_tag, arg, :kind_of => [Array])
      end

      def add_field(arg=nil)
        set_or_return(:add_field, arg, :kind_of => [Hash])
      end

      def algorithm(arg=nil)
        set_or_return(:algorithm, arg, :kind_of => [String], :equal_to => %w(SHA1 SHA256 SHA384 SHA512 MD5 MURMUR3 IPV4_NETWORK) )
      end

      def key(arg=nil)
        set_or_return(:key, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
