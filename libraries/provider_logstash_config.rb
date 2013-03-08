require 'chef/provider'
require File.expand_path('../helpers', __FILE__)

class Chef
  class Provider
    class Logstash
      class Config < Chef::Provider

        include Logstash::Helpers

        def initialize()
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

      private

      def create_config_dir
        directory new_resource.conf_dir do
          owner 'root'
          group 'root'
          mode  00755
        end

        ls_dir = logstash_conf_dir(new_resource.conf_dir, new_resource.name)
        directory ls_dir do
          owner 'root'
          group 'root'
          mode  00755
        end
      end

      def destroy_config_dir
        ls_dir = logstash_conf_dir(new_resource.conf_dir, new_resource.name)
        directory logstash_config_file(ls_dir, new_resource.name) do
          action :delete
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
