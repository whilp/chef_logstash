require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Elasticsearch_http < Chef::Resource::Logstash::Config


          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def flush_size(arg=nil)
            set_or_return(:flush_size, arg, :kind_of => [Fixnum])
          end

          def port(arg=nil)
            set_or_return(:port, arg, :kind_of => [Fixnum])
          end

          def index(arg=nil)
            set_or_return(:index, arg, :kind_of => [String])
          end

          def index_type(arg=nil)
            set_or_return(:index_type, arg, :kind_of => [String])
          end

          def host(arg=nil)
            set_or_return(:host, arg, :kind_of => [String])
          end

          def document_id(arg=nil)
            set_or_return(:document_id, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

