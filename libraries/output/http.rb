require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Http < Chef::Resource::Logstash::Config


          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def verify_ssl(arg=nil)
            set_or_return(:verify_ssl, arg, :kind_of => [TrueClass, FalseClass])
          end

          def headers(arg=nil)
            set_or_return(:headers, arg, :kind_of => [Hash])
          end

          def mapping(arg=nil)
            set_or_return(:mapping, arg, :kind_of => [Hash])
          end

          def http_method(arg=nil)
            set_or_return(:http_method, arg, :kind_of => [String], :equal_to => %w(put post) )
          end

          def format(arg=nil)
            set_or_return(:format, arg, :kind_of => [String], :equal_to => %w(json form message) )
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

          def message(arg=nil)
            set_or_return(:message, arg, :kind_of => [String])
          end

          def url(arg=nil)
            set_or_return(:url, arg, :kind_of => [String])
          end

          def content_type(arg=nil)
            set_or_return(:content_type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

