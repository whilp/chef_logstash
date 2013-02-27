actions :create, :destroy

def initialize(*args)
  super
  @action = :create
end

attribute :name,     :kind_of => String, :name_attribute => true
attribute :user,     :kind_of => String, :default  => 'logstash'
attribute :group,    :kind_of => String, :default  => 'logstash'
attribute :conf_dir, :kind_of => String, :default  => '/etc/logstash'
