require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Pagerduty < Chef::Resource::Logstash::Config


          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def details(arg=nil)
            set_or_return(:details, arg, :kind_of => [Hash])
          end

          def event_type(arg=nil)
            set_or_return(:event_type, arg, :kind_of => [String], :equal_to => %w(trigger acknowledge resolve) )
          end

          def incident_key(arg=nil)
            set_or_return(:incident_key, arg, :kind_of => [String])
          end

          def pdurl(arg=nil)
            set_or_return(:pdurl, arg, :kind_of => [String])
          end

          def service_key(arg=nil)
            set_or_return(:service_key, arg, :kind_of => [String])
          end

          def description(arg=nil)
            set_or_return(:description, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

