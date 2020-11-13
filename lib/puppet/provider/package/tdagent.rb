Puppet::Type.type(:package).provide :tdagent, parent: :gem, source: :gem do
  has_feature :install_options, :versionable
  confine false: (Puppet[:operatingsystem] == :windows)
  commands gemcmd: '/opt/td-agent/usr/sbin/td-agent-gem'
end
