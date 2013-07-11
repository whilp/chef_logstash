require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputSns < Chef::Resource::LogstashConfig

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def use_ssl(arg=nil)
        set_or_return(:use_ssl, arg, :kind_of => [TrueClass, FalseClass])
      end

      def region(arg=nil)
        set_or_return(:region, arg, :kind_of => [String], :equal_to => %w(us-east-1 us-west-1 us-west-2 eu-west-1 ap-southeast-1 ap-southeast-2 ap-northeast-1 sa-east-1 us-gov-west-1) )
      end

      def format(arg=nil)
        set_or_return(:format, arg, :kind_of => [String], :equal_to => %w(json plain) )
      end

      def publish_boot_message_arn(arg=nil)
        set_or_return(:publish_boot_message_arn, arg, :kind_of => [String])
      end

      def aws_credentials_file(arg=nil)
        set_or_return(:aws_credentials_file, arg, :kind_of => [String])
      end

      def secret_access_key(arg=nil)
        set_or_return(:secret_access_key, arg, :kind_of => [String])
      end

      def arn(arg=nil)
        set_or_return(:arn, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def access_key_id(arg=nil)
        set_or_return(:access_key_id, arg, :kind_of => [String])
      end

    end
  end
end
