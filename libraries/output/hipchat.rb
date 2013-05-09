require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Hipchat < Chef::Resource::Logstash::Config


          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def trigger_notify(arg=nil)
            set_or_return(:trigger_notify, arg, :kind_of => [TrueClass, FalseClass])
          end

          def room_id(arg=nil)
            set_or_return(:room_id, arg, :kind_of => [String])
          end

          def from(arg=nil)
            set_or_return(:from, arg, :kind_of => [String])
          end

          def format(arg=nil)
            set_or_return(:format, arg, :kind_of => [String])
          end

          def token(arg=nil)
            set_or_return(:token, arg, :kind_of => [String])
          end

          def color(arg=nil)
            set_or_return(:color, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

