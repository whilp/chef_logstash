require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputNagios < Chef::Resource::LogstashConfig

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def nagios_level(arg=nil)
        set_or_return(:nagios_level, arg, :kind_of => [String], :equal_to => %w(0 1 2 3) )
      end

      def commandfile(arg=nil)
        set_or_return(:commandfile, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
