def load_current_resource
  new_resource.user
  new_resource.group
  new_resource.conf_dir
  new_resource.state
end

action :create do
  create_config
  new_resource.updated_by_last_action(true)
end

action :destroy do
  destroy_config
  new_resource.updated_by_last_action(true)
end

private

def create_config
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

  template logstash_config_file(ls_dir, new_resource.name) do
    source 'logstash.conf.erb'
    owner  'root'
    group  'root'
    mode   00644
    variables :config => new_resource.state
    notifies :restart, "runit_service[#{ logstash_service(new_resource.name) }]"
  end
end

def destroy_config
  ls_dir = logstash_conf_dir(new_resource.conf_dir, new_resource.name)
  file logstash_config_file(ls_dir, new_resource.name) do
    action :delete
  end
end
