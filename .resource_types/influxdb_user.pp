# This file was automatically generated on 2023-05-16 12:28:27 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# @summary Manages users in InfluxDB.  Note that currently, passwords can only be set upon creating the user and must be updated manually using the cli.  A user must be added to an organization to be able to log in.
# @example
#   influxdb_user {'bob':
#     ensure   => present,
#     password => Sensitive('thisisbobspassword'),
#   }
# 
#   influxdb_org {'my_org':
#     ensure => present,
#     members  => ['bob'],
#   }
Puppet::Resource::ResourceType3.new(
  'influxdb_user',
  [
    # Whether the user should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # User password (a Optional[Sensitive[String]])
    Puppet::Resource::Param(Any, 'password'),

    # Status of the user (a Enum[active, inactive])
    Puppet::Resource::Param(Any, 'status')
  ],
  [
    # Name of the user (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true),

    # The host running InfluxDB (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'host'),

    # Port used by the InfluxDB service (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'port'),

    # Administrative token used for authenticating API calls (a Optional[Sensitive[String]])
    Puppet::Resource::Param(Any, 'token'),

    # File on disk containing an administrative token (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'token_file'),

    # Whether to enable SSL for the InfluxDB service (a Boolean)
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'use_ssl')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
