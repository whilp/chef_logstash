require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Gemfire < Chef::Resource::Logstash::Config


          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def key_format(arg=nil)
            set_or_return(:key_format, arg, :kind_of => [String])
          end

          def cache_name(arg=nil)
            set_or_return(:cache_name, arg, :kind_of => [String])
          end

          def region_name(arg=nil)
            set_or_return(:region_name, arg, :kind_of => [String])
          end

          def cache_xml_file(arg=nil)
            set_or_return(:cache_xml_file, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

