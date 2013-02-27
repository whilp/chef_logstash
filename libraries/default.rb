def logstash_service(name)
  "logstash_#{ name }"
end

def logstash_conf_dir(dir, name)
  ::File.join('', dir, name)
end

def logstash_config_file(dir, name)
  ::File.join('', dir, "#{ name }.conf")
end

def logstash_has_configs?
end

def logstash_clean_configs
end
