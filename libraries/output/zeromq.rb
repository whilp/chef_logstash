require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Zeromq < Chef::Resource::Logstash::Config


          def address(arg=nil)
            set_or_return(:address, arg, :kind_of => [Array])
          end

          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def sockopt(arg=nil)
            set_or_return(:sockopt, arg, :kind_of => [Hash])
          end

          def mode(arg=nil)
            set_or_return(:mode, arg, :kind_of => [String], :equal_to => %w(server client) )
          end

          def topology(arg=nil)
            set_or_return(:topology, arg, :kind_of => [String], :equal_to => %w(pushpull pubsub pair) )
          end

          def topic(arg=nil)
            set_or_return(:topic, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

