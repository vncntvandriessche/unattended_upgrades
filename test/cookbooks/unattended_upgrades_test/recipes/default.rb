include_recipe 'unattended_upgrades::default'

cookbook_file 'on_ac_power' do
  path '/sbin/on_ac_power'
  mode 0755
end
