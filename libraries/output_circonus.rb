require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputCirconus < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def annotation(arg=nil)
        set_or_return(:annotation, arg, :kind_of => [Hash])
      end

      def app_name(arg=nil)
        set_or_return(:app_name, arg, :kind_of => [String])
      end

      def api_token(arg=nil)
        set_or_return(:api_token, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
