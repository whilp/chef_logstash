require 'date'
require 'net/http'
require 'uri'
require File.expand_path('../helpers', __FILE__)

class Jar

  include Helpers

  def initialize(new_resource, run_context=nil)
    @new_resource = new_resource
    @run_context = run_context
  end

  def install
    fetch_logstash_jar
  end

  def uninstall
    remove_logstash_jar
  end

  private

  def jar_path
    logstash_jar_with_path(@new_resource.dst_dir, @new_resource.version)
  end

  def jar_modified_since?
    jar = jar_path

    if ::File.exist?(jar)
      uri = URI.parse(@new_resource.url)

      file_mtime = ::Date.parse(::File.mtime(jar).to_s)

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true if uri.scheme == 'https'

      headers = {
        'If-Modified-Since' => file_mtime.httpdate
      }

      response = http.get(uri.request_uri, headers)

      if response.code == '304'
        return false
      else
        return true
      end
    end

      def remove_logstash_jar
        f = Chef::Resource::File(jar_path, run_context)
        f.run_action(:delete)
      end

    end
  end
end
