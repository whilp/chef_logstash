def load_current_resource
  new_resource.user
  new_resource.group
  new_resource.conf_dir
  new_resource.dst_dir
  new_resource.version
  new_resource.url
  new_resource.checksum
  new_resource.nofiles

  new_resource.state
  @run_context.include_recipe 'runit'
  @run_context.include_recipe 'java::openjdk'
end

action :create do
  fetch_logstash_jar
  create_user_and_group
  create_service_script
  create_config
  enable_service
  new_resource.updated_by_last_action(true)
end

action :destroy do
  disable_service
  new_resource.updated_by_last_action(true)
end

private

def fetch_logstash_jar
  directory new_resource.dst_dir do
    owner 'root'
    group 'root'
    mode  00755
  end

  remote_file "logstash_#{ new_resource.version }" do
    path     ::File.join('', new_resource.dst_dir, "logstash_#{ new_resource.version }.jar")
    checksum new_resource.checksum
    source   new_resource.url
    owner    'root'
    group    'root'
    mode     00644
  end
end

def create_user_and_group
  group new_resource.group

  user new_resource.user do
    gid new_resource.group
  end
end

def create_config
  directory new_resource.conf_dir do
    owner 'root'
    group 'root'
    mode  00755
  end

  instance_conf_dir = ::File.join('', new_resource.conf_dir, new_resource.name)
  directory instance_conf_dir do
    owner 'root'
    group 'root'
    mode  00755
  end

  # This might go away completely and move to the config lwrp
  default_conf = ::File.join('', instance_conf_dir, "#{ new_resource.name }.conf")
  template default_conf do
    source 'logstash.conf.erb'
    owner  'root'
    group  'root'
    mode   00644
    variables :config => new_resource.state
    notifies :restart, "runit_service[#{ logstash_service(new_resource.name) }]"
  end
end

def create_service_script
  runit_service logstash_service(new_resource.name) do
    cookbook 'logstash'
    run_template_name 'logstash'
    log_template_name 'logstash'
    options({
      :name     => new_resource.name,
      :dst_dir  => new_resource.dst_dir,
      :conf_dir => new_resource.conf_dir,
      :user     => new_resource.user,
      :nofiles  => new_resource.nofiles
    })
  end
end

def enable_service
  service logstash_service(new_resource.name) do
    action [:enable, :start]
  end
end

def disable_service
  service logstash_service(new_resource.name) do
    action [:disable, :stop]
  end
end
