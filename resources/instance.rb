
actions :create, :destroy

def initialize(*args)
  super
  @action = :create
end

attribute :name,     :kind_of => String, :name_attribute => true
attribute :user,     :kind_of => String, :default  => 'logstash'
attribute :group,    :kind_of => String, :default  => 'logstash'
attribute :conf_dir, :kind_of => String, :default  => '/etc/logstash'
attribute :dst_dir,  :kind_of => String, :default  => '/opt/logstash'
attribute :version,  :kind_of => String, :default  => '1.1.9'
attribute :url,      :kind_of => String, :required => true
attribute :checksum, :kind_of => String, :required => true
attribute :nofiles,  :kind_of => Fixnum, :default  => 1024
