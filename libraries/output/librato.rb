require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Librato < Chef::Resource::Logstash::Config


          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def annotation(arg=nil)
            set_or_return(:annotation, arg, :kind_of => [Hash])
          end

          def counter(arg=nil)
            set_or_return(:counter, arg, :kind_of => [Hash])
          end

          def gauge(arg=nil)
            set_or_return(:gauge, arg, :kind_of => [Hash])
          end

          def account_id(arg=nil)
            set_or_return(:account_id, arg, :kind_of => [String])
          end

          def batch_size(arg=nil)
            set_or_return(:batch_size, arg, :kind_of => [String])
          end

          def api_token(arg=nil)
            set_or_return(:api_token, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

