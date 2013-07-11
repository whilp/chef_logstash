require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashFilterSyslog_pri < Chef::Resource::LogstashConfig

      def severity_labels(arg=nil)
        set_or_return(:severity_labels, arg, :kind_of => [Array])
      end

      def add_tag(arg=nil)
        set_or_return(:add_tag, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def facility_labels(arg=nil)
        set_or_return(:facility_labels, arg, :kind_of => [Array])
      end

      def remove_tag(arg=nil)
        set_or_return(:remove_tag, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def use_labels(arg=nil)
        set_or_return(:use_labels, arg, :kind_of => [TrueClass, FalseClass])
      end

      def add_field(arg=nil)
        set_or_return(:add_field, arg, :kind_of => [Hash])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def syslog_pri_field_name(arg=nil)
        set_or_return(:syslog_pri_field_name, arg, :kind_of => [String])
      end

    end
  end
end
