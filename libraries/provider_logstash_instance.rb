require 'chef/provider'

class Chef
  class Provider
    class Logstash
      class Instance < Chef::Provider

        def whyrun_supported?
          false
        end

        def load_current_resource
        end

      end
    end
  end
end
