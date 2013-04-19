require 'chef/provider'
require File.expand_path('../helpers', __FILE__)

class Chef
  class Provider
    class Logstash
      class Config < Chef::Provider

        include Helpers

        attr_reader :plugin_class

        def initialize()
          @plugin_class = lookup_plugin_class
          super
        end

        def action_create
          create_config_file
          new_resource.updated_by_last_action(true)
        end

        def action_destroy
          destroy_config_file
          new_resource.updated_by_last_action(true)
        end

        def action_enable
        end

        private

        def lookup_plugin_class
          begin
            Object.const_get('Logstash').const_get(@plugin_type).const_get(@plugin)
          rescue e
            puts "some bad shit happened: #{ e }"
          end
        end

        def plugin_object
          lookup_logstash_resource(new_resource.plugin_type, @plugin_name) || @plugin_class.new(name, run_context)
        end

        # Instantiate plugin subclass
        def configure_plugin(arg)
          begin
            if arg.is_a?(Enumerable)
              # Iterate over the hash of resource arguments.
              arg.each do |k, v|
                plugin_object.send(k, v)
              end
            end
          rescue e
            puts "some bad shit happened: #{ e }"
          end
        end

        def create_config_file
          f = Chef::Resource::File.new(new_resource.conf_dir, run_context)
          f.owner 'root'
          f.group 'root'
          f.mode 00755
          f.content render_config_file
          f.run_action(:create)
        end

        def destroy_config_file
          ls_dir = logstash_conf_dir(new_resource.conf_dir, new_resource.name)
          directory logstash_config_file(ls_dir, new_resource.name) do
            action :delete
          end
        end

        def render_config_file
        end

        def lookup_logstash_resource
        end

      end
    end
  end
end
