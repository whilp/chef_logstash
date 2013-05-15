logstash_config 'http_log_files' do
  instance    'default'
  plugin      'file'
  plugin_type 'input'
  plugin_config({
    path => ['/var/log/httpd/*_log'],
    type => 'httpd'
  })
  action [:create, :enable]
end

logstash_instance 'test' do
  url node.logstash.url
  checksum node.logstash.checksum
  install_type 'jar'
  service_type 'runit'
end
