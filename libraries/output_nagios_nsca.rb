require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputNagios_nsca < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def send_nsca_bin(arg=nil)
        set_or_return(:send_nsca_bin, arg, :kind_of => [String])
      end

      def send_nsca_config(arg=nil)
        set_or_return(:send_nsca_config, arg, :kind_of => [String])
      end

      def nagios_status(arg=nil)
        set_or_return(:nagios_status, arg, :kind_of => [String])
      end

      def nagios_service(arg=nil)
        set_or_return(:nagios_service, arg, :kind_of => [String])
      end

      def nagios_host(arg=nil)
        set_or_return(:nagios_host, arg, :kind_of => [String])
      end

      def message_format(arg=nil)
        set_or_return(:message_format, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
