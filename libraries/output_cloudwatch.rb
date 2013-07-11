require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputCloudwatch < Chef::Resource::LogstashConfig

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def use_ssl(arg=nil)
        set_or_return(:use_ssl, arg, :kind_of => [TrueClass, FalseClass])
      end

      def dimensions(arg=nil)
        set_or_return(:dimensions, arg, :kind_of => [Hash])
      end

      def queue_size(arg=nil)
        set_or_return(:queue_size, arg, :kind_of => [Fixnum])
      end

      def region(arg=nil)
        set_or_return(:region, arg, :kind_of => [String], :equal_to => %w(us-east-1 us-west-1 us-west-2 eu-west-1 ap-southeast-1 ap-southeast-2 ap-northeast-1 sa-east-1 us-gov-west-1) )
      end

      def unit(arg=nil)
        set_or_return(:unit, arg, :kind_of => [String], :equal_to => %w(Seconds Microseconds Milliseconds Bytes Kilobytes Megabytes Gigabytes Terabytes Bits Kilobits Megabits Gigabits Terabits Percent Count Bytes/Second Kilobytes/Second Megabytes/Second Gigabytes/Second Terabytes/Second Bits/Second Kilobits/Second Megabits/Second Gigabits/Second Terabits/Second Count/Second None) )
      end

      def metricname(arg=nil)
        set_or_return(:metricname, arg, :kind_of => [String])
      end

      def field_value(arg=nil)
        set_or_return(:field_value, arg, :kind_of => [String])
      end

      def field_namespace(arg=nil)
        set_or_return(:field_namespace, arg, :kind_of => [String])
      end

      def field_unit(arg=nil)
        set_or_return(:field_unit, arg, :kind_of => [String])
      end

      def namespace(arg=nil)
        set_or_return(:namespace, arg, :kind_of => [String])
      end

      def field_metricname(arg=nil)
        set_or_return(:field_metricname, arg, :kind_of => [String])
      end

      def field_dimensions(arg=nil)
        set_or_return(:field_dimensions, arg, :kind_of => [String])
      end

      def secret_access_key(arg=nil)
        set_or_return(:secret_access_key, arg, :kind_of => [String])
      end

      def timeframe(arg=nil)
        set_or_return(:timeframe, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def aws_credentials_file(arg=nil)
        set_or_return(:aws_credentials_file, arg, :kind_of => [String])
      end

      def access_key_id(arg=nil)
        set_or_return(:access_key_id, arg, :kind_of => [String])
      end

      def value(arg=nil)
        set_or_return(:value, arg, :kind_of => [String])
      end

    end
  end
end
