require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashFilterZeromq < Chef::Resource::LogstashConfig

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

      def sockopt(arg=nil)
        set_or_return(:sockopt, arg, :kind_of => [Hash])
      end

      def add_field(arg=nil)
        set_or_return(:add_field, arg, :kind_of => [Hash])
      end

      def mode(arg=nil)
        set_or_return(:mode, arg, :kind_of => [String], :equal_to => %w(server client) )
      end

      def field(arg=nil)
        set_or_return(:field, arg, :kind_of => [String])
      end

      def address(arg=nil)
        set_or_return(:address, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
