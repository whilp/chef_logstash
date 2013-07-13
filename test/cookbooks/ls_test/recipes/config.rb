%w(default).each do |instance_name|

  instance_dir = ::File.join('', 'opt', 'logstash', instance_name)

  logstash_instance instance_name do
    url node.logstash.url
    checksum node.logstash.checksum
    dst_dir instance_dir
    conf_dir ::File.join('', instance_dir, 'conf')
    install_type 'jar'
    service_type 'init'
    action [:create]
  end

  logstash_config 'http_log_files' do
    instance    instance_name
    plugin      'file'
    plugin_type 'input'
    plugin_config({
      :path => ['/var/log/httpd/*_log'],
      :type => 'httpd'
    })
    action [:create, :enable]
  end

end
