require 'chef/provider'
require File.expand_path('../helpers', __FILE__)

dir = File.dirname(File.absolute_path(__FILE__))
::Dir.glob(dir + 'instance_*') { |f| require f }

class Chef
  class Provider
    class LogstashInstance < Chef::Provider

      end
    end
  end
end
