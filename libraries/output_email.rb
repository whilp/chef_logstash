require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class LogstashOutputEmail < Chef::Resource::LogstashConfig

      def attachments(arg=nil)
        set_or_return(:attachments, arg, :kind_of => [Array])
      end

      def tags(arg=nil)
        set_or_return(:tags, arg, :kind_of => [Array])
      end

      def exclude_tags(arg=nil)
        set_or_return(:exclude_tags, arg, :kind_of => [Array])
      end

      def fields(arg=nil)
        set_or_return(:fields, arg, :kind_of => [Array])
      end

      def options(arg=nil)
        set_or_return(:options, arg, :kind_of => [Hash])
      end

      def match(arg=nil)
        set_or_return(:match, arg, :kind_of => [Hash])
      end

      def htmlbody(arg=nil)
        set_or_return(:htmlbody, arg, :kind_of => [String])
      end

      def from(arg=nil)
        set_or_return(:from, arg, :kind_of => [String])
      end

      def contenttype(arg=nil)
        set_or_return(:contenttype, arg, :kind_of => [String])
      end

      def cc(arg=nil)
        set_or_return(:cc, arg, :kind_of => [String])
      end

      def subject(arg=nil)
        set_or_return(:subject, arg, :kind_of => [String])
      end

      def body(arg=nil)
        set_or_return(:body, arg, :kind_of => [String])
      end

      def to(arg=nil)
        set_or_return(:to, arg, :kind_of => [String])
      end

      def type(arg=nil)
        set_or_return(:type, arg, :kind_of => [String])
      end

      def via(arg=nil)
        set_or_return(:via, arg, :kind_of => [String])
      end

    end
  end
end
