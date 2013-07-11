require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashFilterDns < Chef::Resource::LogstashConfig

      def remove_tag(arg=nil)
        set_or_return(:remove_tag, arg, :kind_of => [Array])
      end

      def reverse(arg=nil)
        set_or_return(:reverse, arg, :kind_of => [Array])
      end

      def add_tag(arg=nil)
        set_or_return(:add_tag, arg, :kind_of => [Array])
      end

      def resolve(arg=nil)
        set_or_return(:resolve, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def add_field(arg=nil)
        set_or_return(:add_field, arg, :kind_of => [Hash])
      end

      def action(arg=nil)
        set_or_return(:action, arg, :kind_of => [String], :equal_to => %w(append replace) )
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
