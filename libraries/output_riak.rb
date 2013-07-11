require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputRiak < Chef::Resource::LogstashConfig

      def bucket(arg=nil)
        set_or_return(:bucket, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def indices(arg=nil)
        set_or_return(:indices, arg, :kind_of => [Array])
      end

      def enable_ssl(arg=nil)
        set_or_return(:enable_ssl, arg, :kind_of => [TrueClass, FalseClass])
      end

      def enable_search(arg=nil)
        set_or_return(:enable_search, arg, :kind_of => [TrueClass, FalseClass])
      end

      def bucket_props(arg=nil)
        set_or_return(:bucket_props, arg, :kind_of => [Hash])
      end

      def nodes(arg=nil)
        set_or_return(:nodes, arg, :kind_of => [Hash])
      end

      def ssl_opts(arg=nil)
        set_or_return(:ssl_opts, arg, :kind_of => [Hash])
      end

      def proto(arg=nil)
        set_or_return(:proto, arg, :kind_of => [String], :equal_to => %w(http pb) )
      end

      def key_name(arg=nil)
        set_or_return(:key_name, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
