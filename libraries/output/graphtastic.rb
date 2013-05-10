require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Graphtastic < Chef::Resource::Logstash::Config


          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def metrics(arg=nil)
            set_or_return(:metrics, arg, :kind_of => [Hash])
          end

          def retries(arg=nil)
            set_or_return(:retries, arg, :kind_of => [Fixnum])
          end

          def port(arg=nil)
            set_or_return(:port, arg, :kind_of => [Fixnum])
          end

          def batch_number(arg=nil)
            set_or_return(:batch_number, arg, :kind_of => [Fixnum])
          end

          def integration(arg=nil)
            set_or_return(:integration, arg, :kind_of => [String], :equal_to => %w(udp tcp rmi rest) )
          end

          def host(arg=nil)
            set_or_return(:host, arg, :kind_of => [String])
          end

          def error_file(arg=nil)
            set_or_return(:error_file, arg, :kind_of => [String])
          end

          def context(arg=nil)
            set_or_return(:context, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

