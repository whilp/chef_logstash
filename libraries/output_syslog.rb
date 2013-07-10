require File.expand_path('../resource_logstash_config', __FILE__)

class Chef
  class Resource
    class Logstash
      class Output
        class Syslog < Chef::Resource::Logstash::Config


          def exclude_tags(arg=nil)
            set_or_return(:exclude_tags, arg, :kind_of => [Array])
          end

          def tags(arg=nil)
            set_or_return(:tags, arg, :kind_of => [Array])
          end

          def fields(arg=nil)
            set_or_return(:fields, arg, :kind_of => [Array])
          end

          def port(arg=nil)
            set_or_return(:port, arg, :kind_of => [Fixnum])
          end

          def severity(arg=nil)
            set_or_return(:severity, arg, :kind_of => [String], :equal_to => %w(emergency alert critical error warning notice informational debug) )
          end

          def rfc(arg=nil)
            set_or_return(:rfc, arg, :kind_of => [String], :equal_to => %w(rfc3164 rfc5424) )
          end

          def facility(arg=nil)
            set_or_return(:facility, arg, :kind_of => [String], :equal_to => %w(kernel user-level mail daemon security/authorization syslogd line printer network news uucp clock security/authorization ftp ntp log audit log alert clock local0 local1 local2 local3 local4 local5 local6 local7) )
          end

          def protocol(arg=nil)
            set_or_return(:protocol, arg, :kind_of => [String], :equal_to => %w(tcp udp) )
          end

          def procid(arg=nil)
            set_or_return(:procid, arg, :kind_of => [String])
          end

          def msgid(arg=nil)
            set_or_return(:msgid, arg, :kind_of => [String])
          end

          def host(arg=nil)
            set_or_return(:host, arg, :kind_of => [String])
          end

          def sourcehost(arg=nil)
            set_or_return(:sourcehost, arg, :kind_of => [String])
          end

          def appname(arg=nil)
            set_or_return(:appname, arg, :kind_of => [String])
          end

          def timestamp(arg=nil)
            set_or_return(:timestamp, arg, :kind_of => [String])
          end

          def type(arg=nil)
            set_or_return(:type, arg, :kind_of => [String])
          end

        end
      end
    end
  end
end

