require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Pipe < Chef::Resource::Logstash::Config


          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def ttl(arg=nil)
            set_or_return(:ttl, arg, :kind_of => [Fixnum])
          end

          def message_format(arg=nil)
            set_or_return(:message_format, arg, :kind_of => [String])
          end

          def command(arg=nil)
            set_or_return(:command, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

