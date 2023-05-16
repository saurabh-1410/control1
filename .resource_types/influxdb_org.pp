# This file was automatically generated on 2023-05-16 12:28:27 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# @summary Manages organizations in InfluxDB
# @example
#   influxdb_org {'puppetlabs':
#     ensure  => present,
#   }
Puppet::Resource::ResourceType3.new(
  'influxdb_org',
  [
    # Whether the organization should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # A list of users to add as members of the organization (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'members'),

    # Optional description for a given org (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'description')
  ],
  [
    # Name of the organization to manage in InfluxDB (a String)
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
