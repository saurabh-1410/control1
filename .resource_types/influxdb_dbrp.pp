# This file was automatically generated on 2023-05-16 12:28:27 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# @summary Manages dbrps, or database and retention policy mappings.  These provide backwards compatibilty for 1.x queries.  Note that these are automatically created by the influxdb_bucket resource, so it isn't necessary to use this resource unless you need to customize them.
# @example
#   influxdb_dbrp {'my_bucket':
#     ensure => present,
#     org    => 'my_org',
#     bucket => 'my_bucket',
#     rp     => 'Forever',
#   }
# 
# This type provides the ability to manage InfluxDB dbrps
Puppet::Resource::ResourceType3.new(
  'influxdb_dbrp',
  [
    # Whether the dbrp should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # The bucket to map to the retention policy to (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'bucket'),

    # Name of the organization that owns the mapping (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'org'),

    # Whether this should be the default policy (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'is_default'),

    # Name of the InfluxDB 1.x retention policy (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'rp')
  ],
  [
    # Name of the dbrp to manage in InfluxDB (a String)
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
