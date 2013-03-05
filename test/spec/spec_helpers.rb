require 'chef/event_dispatch/dispatcher'
require 'chef/platform'
require 'chef/run_context'
require 'chef/resource'
require 'chef/resource/service'
require 'minitest/autorun'
require 'minitest/pride'
require File.expand_path('../../../libraries/resource_logstash_config', __FILE__)
require File.expand_path('../../../libraries/provider_logstash_config', __FILE__)
