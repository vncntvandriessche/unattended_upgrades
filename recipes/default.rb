include_recipe 'apt::default'

package 'unattended-upgrades'

template 'unattended_upgrades_conf' do
  path '/etc/apt/apt.conf.d/50unattended-upgrades'
  source 'unattended_upgrades.erb'
  variables(
    override: node[:unattended_upgrades][:override],
    config: node[:unattended_upgrades][:config]
  )
end

template 'auto_upgrades_conf' do
  path '/etc/apt/apt.conf.d/20auto-upgrades'
  source 'auto_upgrades.erb'
  variables(
    enabled: node[:unattended_upgrades][:enabled],
    update_package_list: node[:unattended_upgrades][:update_package_list],
  )
end
