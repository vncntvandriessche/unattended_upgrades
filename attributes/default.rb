default[:unattended_upgrades][:enabled] = true
default[:unattended_upgrades][:update_package_list] = -1

default[:unattended_upgrades][:override][:verbose_level] = nil
default[:unattended_upgrades][:override][:dl_limit] = nil
default[:unattended_upgrades][:override][:random_sleep] = nil

default[:unattended_upgrades][:config][:auto_fix_interrupted_dpkg] = true
default[:unattended_upgrades][:config][:minimal_steps] = true
default[:unattended_upgrades][:config][:install_on_shutdown] = false
default[:unattended_upgrades][:config][:remove_unused_dependencies] = false

default[:unattended_upgrades][:config][:automatic_reboot] = false
default[:unattended_upgrades][:config][:automatic_reboot_time] = "06:00"

default[:unattended_upgrades][:config][:mail_only_on_error] = true
default[:unattended_upgrades][:config][:mail_address] = 'root@localhost'

default[:unattended_upgrades][:config][:allowed_origins] = [
  '${distro_id} ${distro_codename}-security'
]

default[:unattended_upgrades][:config][:package_blacklist] = []
