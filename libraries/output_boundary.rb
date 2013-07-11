require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputBoundary < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def btags(arg=nil)
        set_or_return(:btags, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def auto(arg=nil)
        set_or_return(:auto, arg, :kind_of => [TrueClass, FalseClass])
      end

      def api_key(arg=nil)
        set_or_return(:api_key, arg, :kind_of => [String])
      end

      def end_time(arg=nil)
        set_or_return(:end_time, arg, :kind_of => [String])
      end

      def btype(arg=nil)
        set_or_return(:btype, arg, :kind_of => [String])
      end

      def org_id(arg=nil)
        set_or_return(:org_id, arg, :kind_of => [String])
      end

      def start_time(arg=nil)
        set_or_return(:start_time, arg, :kind_of => [String])
      end

      def bsubtype(arg=nil)
        set_or_return(:bsubtype, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
