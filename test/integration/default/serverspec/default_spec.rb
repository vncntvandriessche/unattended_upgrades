require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/local/sbin'

describe package('unattended-upgrades') do
  it { should be_installed }
end

describe command('sudo /etc/cron.daily/apt;') do
  its(:stdout) { should match(/(unattended-upgrade \(not run\)|unattended-upgrade \(success\))/) }
  its(:exit_status) { should eq 0 }
end
