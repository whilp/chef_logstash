require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Redis < Chef::Resource::Logstash::Config


          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def host(arg=nil)
            set_or_return(:host, arg, :kind_of => [Array])
          end

          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def batch(arg=nil)
            set_or_return(:batch, arg, :kind_of => [TrueClass, FalseClass])
          end

          def shuffle_hosts(arg=nil)
            set_or_return(:shuffle_hosts, arg, :kind_of => [TrueClass, FalseClass])
          end

          def batch_timeout(arg=nil)
            set_or_return(:batch_timeout, arg, :kind_of => [Fixnum])
          end

          def congestion_interval(arg=nil)
            set_or_return(:congestion_interval, arg, :kind_of => [Fixnum])
          end

          def congestion_threshold(arg=nil)
            set_or_return(:congestion_threshold, arg, :kind_of => [Fixnum])
          end

          def db(arg=nil)
            set_or_return(:db, arg, :kind_of => [Fixnum])
          end

          def port(arg=nil)
            set_or_return(:port, arg, :kind_of => [Fixnum])
          end

          def batch_events(arg=nil)
            set_or_return(:batch_events, arg, :kind_of => [Fixnum])
          end

          def reconnect_interval(arg=nil)
            set_or_return(:reconnect_interval, arg, :kind_of => [Fixnum])
          end

          def timeout(arg=nil)
            set_or_return(:timeout, arg, :kind_of => [Fixnum])
          end

          def data_type(arg=nil)
            set_or_return(:data_type, arg, :kind_of => [String], :equal_to => %w(list channel) )
          end

          def password(arg=nil)
            set_or_return(:password, arg, :kind_of => [String])
          end

          def key(arg=nil)
            set_or_return(:key, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

