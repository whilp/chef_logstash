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
  new_resource.updated_by_last_action(true)
end

action :enable do
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

  jar_path = logstash_jar_with_path(new_resource.dst_dir, new_resource.version)
  remote_file "logstash_#{ new_resource.version }" do
    path     jar_path
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

def create_service_script
  jar_path = logstash_jar_with_path(new_resource.dst_dir, new_resource.version)
  runit_service logstash_service(new_resource.name) do
    cookbook 'logstash'
    run_template_name 'logstash'
    log_template_name 'logstash'
    options({
      :conf_dir => new_resource.conf_dir,
      :jar_path => jar_path,
      :name     => new_resource.name,
      :nofiles  => new_resource.nofiles,
      :user     => new_resource.user,
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
