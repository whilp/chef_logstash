
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helpers'

describe 'ResourceLogstashConfig', 'Tests for Chef::Resource::LogstashConfig' do

  let(:node) do
    node = Chef::Node.new
    node.automatic['platform'] = 'ubuntu'
    node.automatic['platform_version'] = '12.04'
    node
  end
  let(:events) { Chef::EventDispatch::Dispatcher.new }
  let(:run_context) { Chef::RunContext.new(node, {}, events) }
  let(:instance_name) { 'test_instance'}

  before do
    @logstashconfig = Chef::Resource::LogstashConfig.new(instance_name, run_context)
  end

  describe 'Parameter tests for Chef::Resource::LogstashConfig' do
    it "has a 'instance' parameter that can be set" do
      @logstashconfig.instance('instance_name')
      @logstashconfig.instance.must_equal 'instance_name'
    end

    it "has a 'plugin_name' parameter that can be set" do
      @logstashconfig.plugin_name('file')
      @logstashconfig.plugin_name.must_equal 'file'
    end

    it "has a 'plugin_type' parameter that can be set" do
      @logstashconfig.plugin_type('input')
      @logstashconfig.plugin_type.must_equal 'input'
    end
  end

  describe 'Can spawn sub-resources' do

    it "Creates a LogstashConfig::Input::File resource" do
      @logstashconfig.instance('instance_name')
      @logstashconfig.plugin_name('File')
      @logstashconfig.plugin_type('Input')

      assert_kind_of(Chef::Resource, @logstashconfig)
      assert_respond_to(@logstashconfig, :config)

      @logstashconfig.config({ 'debug' => true })

    end
  end

end
