require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Juggernaut < Chef::Resource::Logstash::Config


          def channels(arg=nil)
            set_or_return(:channels, arg, :kind_of => [Array])
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

          def timeout(arg=nil)
            set_or_return(:timeout, arg, :kind_of => [Fixnum])
          end

          def db(arg=nil)
            set_or_return(:db, arg, :kind_of => [Fixnum])
          end

          def port(arg=nil)
            set_or_return(:port, arg, :kind_of => [Fixnum])
          end

          def password(arg=nil)
            set_or_return(:password, arg, :kind_of => [String])
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
  end
end

