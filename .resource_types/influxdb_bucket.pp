# This file was automatically generated on 2023-05-16 15:31:18 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# @summary Manages InfluxDB buckets
# @example
#   influxdb_bucket {'my_bucket':
#     ensure  => present,
#     org     => 'my_org',
#     labels  => ['my_label1', 'my_label2'],
#     require => Influxdb_org['my_org'],
#   }
Puppet::Resource::ResourceType3.new(
  'influxdb_bucket',
  [
    # Whether the bucket should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Labels to apply to the bucket.  For convenience, these will be created automatically without the need to create influxdb_label resources (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'labels'),

    # Organization which the buckets belongs to (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'org'),

    # Rules to determine retention of data inside the bucket (a Array)
    Puppet::Resource::Param(Any, 'retention_rules'),

    # List of users to add as members of the bucket. For convenience, these will be created automatically without the need to create influxdb_user resources (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'members'),

    # Whether to create a "database retention policy" mapping to allow for legacy access (a Boolean)
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'create_dbrp')
  ],
  [
    # Name of the bucket (a String)
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
