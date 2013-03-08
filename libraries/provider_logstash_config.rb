require 'chef/provider'
require File.expand_path('../helpers', __FILE__)

class Chef
  class Provider
    class Logstash
      class Config < Chef::Provider

      def initialize()
        super

      end

      def action_create
        create_config_dir
        new_resource.updated_by_last_action(true)
      end

      def action_destroy
        destroy_config_dir
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

    end
  end
end
