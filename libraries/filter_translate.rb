require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashFilterTranslate < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def add_tag(arg=nil)
        set_or_return(:add_tag, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def remove_tag(arg=nil)
        set_or_return(:remove_tag, arg, :kind_of => [Array])
      end

      def regex(arg=nil)
        set_or_return(:regex, arg, :kind_of => [TrueClass, FalseClass])
      end

      def override(arg=nil)
        set_or_return(:override, arg, :kind_of => [TrueClass, FalseClass])
      end

      def exact(arg=nil)
        set_or_return(:exact, arg, :kind_of => [TrueClass, FalseClass])
      end

      def add_field(arg=nil)
        set_or_return(:add_field, arg, :kind_of => [Hash])
      end

      def dictionary(arg=nil)
        set_or_return(:dictionary, arg, :kind_of => [Hash])
      end

      def dictionary_path(arg=nil)
        set_or_return(:dictionary_path, arg, :kind_of => [String])
      end

      def fallback(arg=nil)
        set_or_return(:fallback, arg, :kind_of => [String])
      end

      def field(arg=nil)
        set_or_return(:field, arg, :kind_of => [String])
      end

      def destination(arg=nil)
        set_or_return(:destination, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
