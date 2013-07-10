require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Filter
        class Mutate < Chef::Resource::Logstash::Config


          def uppercase(arg=nil)
            set_or_return(:uppercase, arg, :kind_of => [Array])
          end

          def add_tag(arg=nil)
            set_or_return(:add_tag, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def gsub(arg=nil)
            set_or_return(:gsub, arg, :kind_of => [Array])
          end

          def strip(arg=nil)
            set_or_return(:strip, arg, :kind_of => [Array])
          end

          def lowercase(arg=nil)
            set_or_return(:lowercase, arg, :kind_of => [Array])
          end

          def remove(arg=nil)
            set_or_return(:remove, arg, :kind_of => [Array])
          end

          def remove_tag(arg=nil)
            set_or_return(:remove_tag, arg, :kind_of => [Array])
          end

          def merge(arg=nil)
            set_or_return(:merge, arg, :kind_of => [Hash])
          end

          def rename(arg=nil)
            set_or_return(:rename, arg, :kind_of => [Hash])
          end

          def replace(arg=nil)
            set_or_return(:replace, arg, :kind_of => [Hash])
          end

          def split(arg=nil)
            set_or_return(:split, arg, :kind_of => [Hash])
          end

          def update(arg=nil)
            set_or_return(:update, arg, :kind_of => [Hash])
          end

          def convert(arg=nil)
            set_or_return(:convert, arg, :kind_of => [Hash])
          end

          def add_field(arg=nil)
            set_or_return(:add_field, arg, :kind_of => [Hash])
          end

          def join(arg=nil)
            set_or_return(:join, arg, :kind_of => [Hash])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

