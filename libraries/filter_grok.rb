require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Filter
        class Grok < Chef::Resource::Logstash::Config


          def tag_on_failure(arg=nil)
            set_or_return(:tag_on_failure, arg, :kind_of => [Array])
          end

          def patterns_dir(arg=nil)
            set_or_return(:patterns_dir, arg, :kind_of => [Array])
          end

          def add_tag(arg=nil)
            set_or_return(:add_tag, arg, :kind_of => [Array])
          end

          def pattern(arg=nil)
            set_or_return(:pattern, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def remove_tag(arg=nil)
            set_or_return(:remove_tag, arg, :kind_of => [Array])
          end

          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def keep_empty_captures(arg=nil)
            set_or_return(:keep_empty_captures, arg, :kind_of => [TrueClass, FalseClass])
          end

          def drop_if_match(arg=nil)
            set_or_return(:drop_if_match, arg, :kind_of => [TrueClass, FalseClass])
          end

          def break_on_match(arg=nil)
            set_or_return(:break_on_match, arg, :kind_of => [TrueClass, FalseClass])
          end

          def singles(arg=nil)
            set_or_return(:singles, arg, :kind_of => [TrueClass, FalseClass])
          end

          def named_captures_only(arg=nil)
            set_or_return(:named_captures_only, arg, :kind_of => [TrueClass, FalseClass])
          end

          def add_field(arg=nil)
            set_or_return(:add_field, arg, :kind_of => [Hash])
          end

          def match(arg=nil)
            set_or_return(:match, arg, :kind_of => [Hash])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

