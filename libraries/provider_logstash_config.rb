require 'chef/provider'
require File.expand_path('../helpers', __FILE__)

class Chef
  class Provider
    class Logstash
      class Config < Chef::Provider

        include Helpers

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
          Object.const_get('Logstash').const_get(@plugin_type).const_get(@plugin)
        end

        def plugin_class
          @plugin_class = lookup_plugin_class
        end

        def plugin_object
          if @plugin_object.nil?
            @plugin_object = @plugin_class.new(name, run_context)
          end
        end

        # Instantiate plugin subclass
        def configure_plugin(arg={})
          plugin_object

          # Iterate over the hash of resource arguments.
          arg.each do |k, v|
            @plugin_object.send(k, v)
          end
        end

        def create_config_file
          file new_resource.conf_dir do
            owner 'root'
            group 'root'
            mode  00755
            content render_config_file
          end
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
