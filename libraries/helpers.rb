require 'chef/resource'

module Helpers

  def logstash_service(name)
    "logstash_#{ name }"
  end

  def logstash_conf_dir(dir, name)
    ::File.join('', dir, name)
  end

  def logstash_config_file(dir, name)
    ::File.join('', dir, "#{ name }.conf")
  end

  def logstash_has_configs?(dir)
    ::Dir.glob(::File.join('', dir, '*.conf'))
  end

  def logstash_jar_with_path(dir, version)
    ::File.join('', dir, "logstash_#{ version }.jar")
  end

  def logstash_clean_configs(name)
    confdir = lookup_logstash_confdir(name)
    i = logstash_has_configs(confdir)
    i.each do |config|
      unless lookup_resource('LogstashConfig', i)
        logstash_delete_old_config(::File.join('', confdir, i))
      end
    end
  end

  def logstash_delete_old_config(name)
    f = Chef::Resource::File.new(name, run_context)
    f.run_action(:delete)
  end

  # Finds a resource if it exists in the collection.
  # @param type [String] The resources proper name, eg LogstashInstance or LogstashConfig
  # @param name [String] The unique name of that resource.
  # @return [Resource] Hopefully the resource object you were looking for.
  #
  def lookup_resource(type, name)
    begin
      self.run_context.resource_collection.find(type, name)
    rescue RuntimeError => e
      puts "more error fu: #{ e }"
    end
  end

  def lookup_logstash_confdir(name)
    l = lookup_resource('LogstashInstance', name)
    l.conf_dir
  end

end
