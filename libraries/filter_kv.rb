require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashFilterKv < Chef::Resource::LogstashConfig

      def remove_tag(arg=nil)
        set_or_return(:remove_tag, arg, :kind_of => [Array])
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

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def add_field(arg=nil)
        set_or_return(:add_field, arg, :kind_of => [Hash])
      end

      def prefix(arg=nil)
        set_or_return(:prefix, arg, :kind_of => [String])
      end

      def field_split(arg=nil)
        set_or_return(:field_split, arg, :kind_of => [String])
      end

      def source(arg=nil)
        set_or_return(:source, arg, :kind_of => [String])
      end

      def target(arg=nil)
        set_or_return(:target, arg, :kind_of => [String])
      end

      def trim(arg=nil)
        set_or_return(:trim, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def value_split(arg=nil)
        set_or_return(:value_split, arg, :kind_of => [String])
      end

    end
  end
end
