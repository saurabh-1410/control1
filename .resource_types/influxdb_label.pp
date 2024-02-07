# This file was automatically generated on 2023-05-16 15:31:18 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# @summary Manages labels in InfluxDB
# @example
#   influxdb_label {'puppetlabs/influxdb':
#     ensure  => present,
#     org     => 'puppetlabs',
#   }
Puppet::Resource::ResourceType3.new(
  'influxdb_label',
  [
    # Whether the label should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Organization the label belongs to (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'org'),

    # Key/value pairs associated with the label (a Optional[Hash])
    Puppet::Resource::Param(Any, 'properties')
  ],
  [
    # Name of the label (a String)
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
