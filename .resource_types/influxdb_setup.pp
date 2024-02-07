# This file was automatically generated on 2023-05-16 15:31:18 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# @summary Manages initial setup of InfluxDB.  It is recommended to use the influxdb::install class instead of this resource directly.
# @example
#   influxdb_setup {'<influx_fqdn>':
#     ensure     => 'present',
#     token_file => <path_to_token_file>,
#     bucket     => 'my_bucket',
#     org        => 'my_org',
#     username   => 'admin',
#     password   => 'admin',
#   }
Puppet::Resource::ResourceType3.new(
  'influxdb_setup',
  [
    # Whether initial setup has been performed.  present/absent is determined by the response from the /setup api (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure')
  ],
  [
    # The fqdn of the host running InfluxDB (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true),

    # Name of the initial bucket to create (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'bucket'),

    # Name of the initial organization to create (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'org'),

    # Name of the initial admin user (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'username'),

    # Initial admin user password (a Sensitive[String])
    Puppet::Resource::Param(Any, 'password'),

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
