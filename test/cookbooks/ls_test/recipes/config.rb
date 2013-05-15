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
