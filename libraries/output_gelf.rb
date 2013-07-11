require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputGelf < Chef::Resource::LogstashConfig

      def level(arg=nil)
        set_or_return(:level, arg, :kind_of => [Array])
      end

      def ignore_metadata(arg=nil)
        set_or_return(:ignore_metadata, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def ship_tags(arg=nil)
        set_or_return(:ship_tags, arg, :kind_of => [TrueClass, FalseClass])
      end

      def ship_metadata(arg=nil)
        set_or_return(:ship_metadata, arg, :kind_of => [TrueClass, FalseClass])
      end

      def custom_fields(arg=nil)
        set_or_return(:custom_fields, arg, :kind_of => [Hash])
      end

      def chunksize(arg=nil)
        set_or_return(:chunksize, arg, :kind_of => [Fixnum])
      end

      def port(arg=nil)
        set_or_return(:port, arg, :kind_of => [Fixnum])
      end

      def full_message(arg=nil)
        set_or_return(:full_message, arg, :kind_of => [String])
      end

      def host(arg=nil)
        set_or_return(:host, arg, :kind_of => [String])
      end

      def sender(arg=nil)
        set_or_return(:sender, arg, :kind_of => [String])
      end

      def line(arg=nil)
        set_or_return(:line, arg, :kind_of => [String])
      end

      def file(arg=nil)
        set_or_return(:file, arg, :kind_of => [String])
      end

      def short_message(arg=nil)
        set_or_return(:short_message, arg, :kind_of => [String])
      end

      def facility(arg=nil)
        set_or_return(:facility, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

    end
  end
end
