require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Opentsdb < Chef::Resource::Logstash::Config


          def metrics(arg=nil)
            set_or_return(:metrics, arg, :kind_of => [Array])
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

          def debug(arg=nil)
            set_or_return(:debug, arg, :kind_of => [TrueClass, FalseClass])
          end

          def port(arg=nil)
            set_or_return(:port, arg, :kind_of => [Fixnum])
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

