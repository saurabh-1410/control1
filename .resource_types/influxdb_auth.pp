# This file was automatically generated on 2023-05-16 15:31:18 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# @summary Manages authentication tokens in InfluxDB
# @example
#   influxdb_auth {"telegraf read token":
#     ensure        => present,
#     org           => 'my_org'
#     permissions   => [
#       {
#         "action"   => "read",
#         "resource" => {
#           "type"   => "telegrafs"
#         }
#       },
#     ],
#   }
Puppet::Resource::ResourceType3.new(
  'influxdb_auth',
  [
    # Whether the token should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Status of the token (a Enum[active, inactive])
    Puppet::Resource::Param(Any, 'status'),

    # The organization that owns the token (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'org'),

    # User to scope authorization to (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'user'),

    # List of permissions granted by the token (a Array[Hash])
    Puppet::Resource::Param(Any, 'permissions')
  ],
  [
    # Name of the token.  Note that InfluxDB does not currently have a human readable identifer for token, so for convinience we use the description property as the namevar of this resource (a String)
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
