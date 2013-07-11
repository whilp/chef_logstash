require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashFilterMultiline < Chef::Resource::LogstashConfig

      def patterns_dir(arg=nil)
        set_or_return(:patterns_dir, arg, :kind_of => [Array])
      end

      def add_tag(arg=nil)
        set_or_return(:add_tag, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def remove_tag(arg=nil)
        set_or_return(:remove_tag, arg, :kind_of => [Array])
      end

      def negate(arg=nil)
        set_or_return(:negate, arg, :kind_of => [TrueClass, FalseClass])
      end

      def add_field(arg=nil)
        set_or_return(:add_field, arg, :kind_of => [Hash])
      end

      def what(arg=nil)
        set_or_return(:what, arg, :kind_of => [String], :equal_to => %w(previous next) )
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def pattern(arg=nil)
        set_or_return(:pattern, arg, :kind_of => [String])
      end

      def stream_identity(arg=nil)
        set_or_return(:stream_identity, arg, :kind_of => [String])
      end

    end
  end
end
