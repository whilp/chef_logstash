require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputDatadog < Chef::Resource::LogstashConfig

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def dd_tags(arg=nil)
        set_or_return(:dd_tags, arg, :kind_of => [Array])
      end

      def source_type_name(arg=nil)
        set_or_return(:source_type_name, arg, :kind_of => [String], :equal_to => %w(nagios hudson jenkins user my apps feed chef puppet git bitbucket) )
      end

      def alert_type(arg=nil)
        set_or_return(:alert_type, arg, :kind_of => [String], :equal_to => %w(info error warning success) )
      end

      def priority(arg=nil)
        set_or_return(:priority, arg, :kind_of => [String], :equal_to => %w(normal low) )
      end

      def date_happened(arg=nil)
        set_or_return(:date_happened, arg, :kind_of => [String])
      end

      def api_key(arg=nil)
        set_or_return(:api_key, arg, :kind_of => [String])
      end

      def text(arg=nil)
        set_or_return(:text, arg, :kind_of => [String])
      end

      def title(arg=nil)
        set_or_return(:title, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
