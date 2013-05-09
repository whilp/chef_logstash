require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Elasticsearch_river < Chef::Resource::Logstash::Config


          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def es_ordered(arg=nil)
            set_or_return(:es_ordered, arg, :kind_of => [TrueClass, FalseClass])
          end

          def debug(arg=nil)
            set_or_return(:debug, arg, :kind_of => [TrueClass, FalseClass])
          end

          def durable(arg=nil)
            set_or_return(:durable, arg, :kind_of => [TrueClass, FalseClass])
          end

          def persistent(arg=nil)
            set_or_return(:persistent, arg, :kind_of => [TrueClass, FalseClass])
          end

          def es_port(arg=nil)
            set_or_return(:es_port, arg, :kind_of => [Fixnum])
          end

          def es_bulk_size(arg=nil)
            set_or_return(:es_bulk_size, arg, :kind_of => [Fixnum])
          end

          def rabbitmq_port(arg=nil)
            set_or_return(:rabbitmq_port, arg, :kind_of => [Fixnum])
          end

          def es_bulk_timeout_ms(arg=nil)
            set_or_return(:es_bulk_timeout_ms, arg, :kind_of => [Fixnum])
          end

          def exchange_type(arg=nil)
            set_or_return(:exchange_type, arg, :kind_of => [String], :equal_to => %w(fanout direct topic) )
          end

          def index(arg=nil)
            set_or_return(:index, arg, :kind_of => [String])
          end

          def index_type(arg=nil)
            set_or_return(:index_type, arg, :kind_of => [String])
          end

          def key(arg=nil)
            set_or_return(:key, arg, :kind_of => [String])
          end

          def password(arg=nil)
            set_or_return(:password, arg, :kind_of => [String])
          end

          def exchange(arg=nil)
            set_or_return(:exchange, arg, :kind_of => [String])
          end

          def queue(arg=nil)
            set_or_return(:queue, arg, :kind_of => [String])
          end

          def rabbitmq_host(arg=nil)
            set_or_return(:rabbitmq_host, arg, :kind_of => [String])
          end

          def es_host(arg=nil)
            set_or_return(:es_host, arg, :kind_of => [String])
          end

          def document_id(arg=nil)
            set_or_return(:document_id, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

          def user(arg=nil)
            set_or_return(:user, arg, :kind_of => [String])
          end

          def vhost(arg=nil)
            set_or_return(:vhost, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

