require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputElasticsearch < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def embedded(arg=nil)
        set_or_return(:embedded, arg, :kind_of => [TrueClass, FalseClass])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def max_inflight_requests(arg=nil)
        set_or_return(:max_inflight_requests, arg, :kind_of => [Fixnum])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

      def embedded_http_port(arg=nil)
        set_or_return(:embedded_http_port, arg, :kind_of => [String])
      end

      def index(arg=nil)
        set_or_return(:index, arg, :kind_of => [String])
      end

      def index_type(arg=nil)
        set_or_return(:index_type, arg, :kind_of => [String])
      end

      def bind_host(arg=nil)
        set_or_return(:bind_host, arg, :kind_of => [String])
      end

      def node_name(arg=nil)
        set_or_return(:node_name, arg, :kind_of => [String])
      end

      def document_id(arg=nil)
        set_or_return(:document_id, arg, :kind_of => [String])
      end

      def cluster(arg=nil)
        set_or_return(:cluster, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
