# unattended_upgrades

Installs the unattended_upgrades package, e.g the one available at [Ubuntu](https://help.ubuntu.com/community/AutomaticSecurityUpdates).

## Requirements

This cookbook has been tested on the following platform:

  - [Ubuntu 14.04](http://releases.ubuntu.com/14.04/)

## Attributes

### default[:unattended_upgrades][:enabled]

  - _Value_: true

### default[:unattended_upgrades][:update_package_list]

  - _Value_: -1

Indicates that the package list should be updated every time, not every n days.

### default[:unattended_upgrades][:override][:verbose_level]

  - _Value_: nil

When the value is *nil*, the *verbose level* value will not be overridden.

### default[:unattended_upgrades][:override][:dl_limit]

  - _Value_: nil

When the value is *nil*, the *download limit* value will not be overidden.

### default[:unattended_upgrades][:override][:random_sleep]

  - _Value_: nil

When the value is *nil*, the *random sleep* value will not be overidden.

### default[:unattended_upgrades][:config][:auto_fix_interrupted_dpkg]

  - _Value_: true

### default[:unattended_upgrades][:config][:minimal_steps]

  - _Value_: true

### default[:unattended_upgrades][:config][:install_on_shutdown]

  - _Value_: false

### default[:unattended_upgrades][:config][:remove_unused_dependencies]

  - _Value_: false

### default[:unattended_upgrades][:config][:automatic_reboot]

  - _Value_: false

### default[:unattended_upgrades][:config][:automatic_reboot_time]

  - _Value_: "06:00"

This option is only enabled when the
`[:unattended_upgrades][:config][:automatic_reboot]` value is set to true.

### default[:unattended_upgrades][:config][:mail_only_on_error]

  - _Value_: true

This functionality will only work if there is an element in the stack that
 enables mailing. For example the `mailutils` package.

### default[:unattended_upgrades][:config][:mail_address]

  - _Value_: "root@localhost"

### default[:unattended_upgrades][:config][:allowed_origins]

  - _Value_: An array;

```
[
  '${distro_id} ${distro_codename}-security'
]

```

### default[:unattended_upgrades][:config][:package_blacklist]

  - _Value_: An array;

```
[]
```

## Usage

Add the recipe to a `run_list`.

## Testing

```
kitchen test;
```

## License & Authors

  - Vincent Van Driessche

License: MIT (included in repo).
