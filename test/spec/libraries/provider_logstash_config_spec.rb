
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helpers'

describe 'ProviderLogstashConfig', 'Tests for Chef::Provider::Logstash::Config' do

  let(:node) do
    node = Chef::Node.new
    node.automatic['platform'] = 'ubuntu'
    node.automatic['platform_version'] = '12.04'
    node
  end
  let(:events) { Chef::EventDispatch::Dispatcher.new }
  let(:run_context) { Chef::RunContext.new(node, {}, events) }
  let(:instance_name) { 'test_instance' }

  before :each do
    @logstashconfig = Chef::Provider::Logstash::Config.new(instance_name, run_context)
  end

  describe 'Parameter tests for Chef::Provider::Logstash::Config' do
    it "has a 'create' action" do
      assert_respond_to(@logstashconfig, :action_create)
    end

    it "has a 'enable' action" do
      assert_respond_to(@logstashconfig, :action_enable)
    end

    it "has a 'destroy' action" do
      assert_respond_to(@logstashconfig, :action_destroy)
    end
  end
end
