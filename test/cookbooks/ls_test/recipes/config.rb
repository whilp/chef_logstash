logstash_instance 'default' do
  url node.logstash.url
  checksum node.logstash.checksum
  action [:create]
  install_type 'jar'
  service_type 'init'
end

logstash_config 'http_log_files' do
  instance    'default'
  plugin      'file'
  plugin_type 'input'
  plugin_config({
    :path => ['/var/log/httpd/*_log'],
    :type => 'httpd'
  })
  action [:create, :enable]
end
