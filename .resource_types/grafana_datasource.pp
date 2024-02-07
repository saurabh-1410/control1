# This file was automatically generated on 2023-05-16 15:31:17 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage datasources in Grafana
Puppet::Resource::ResourceType3.new(
  'grafana_datasource',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # An optional unique identifier for the datasource. Supported by grafana 7.3 onwards. If you do not specify this parameter, grafana will assign a uid for you
    Puppet::Resource::Param(Any, 'uid'),

    # The URL/Endpoint of the datasource
    Puppet::Resource::Param(Any, 'url'),

    # The datasource type
    Puppet::Resource::Param(Any, 'type'),

    # The username for the datasource (optional)
    Puppet::Resource::Param(Any, 'user'),

    # The password for the datasource (optional)
    Puppet::Resource::Param(Any, 'password'),

    # The name of the database (optional)
    Puppet::Resource::Param(Any, 'database'),

    # Whether the datasource is accessed directly or not by the clients
    # 
    # Valid values are `direct`, `proxy`.
    Puppet::Resource::Param(Enum['direct', 'proxy'], 'access_mode'),

    # Whether the datasource is the default one
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'is_default'),

    # Whether basic auth is enabled or not
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'basic_auth'),

    # The username for basic auth if enabled
    Puppet::Resource::Param(Any, 'basic_auth_user'),

    # The password for basic auth if enabled
    Puppet::Resource::Param(Any, 'basic_auth_password'),

    # Whether credentials such as cookies or auth headers should be sent with cross-site requests
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'with_credentials'),

    # Additional JSON data to configure the datasource (optional)
    Puppet::Resource::Param(Any, 'json_data'),

    # Additional secure JSON data to configure the datasource (optional)
    Puppet::Resource::Param(Any, 'secure_json_data')
  ],
  [
    # The name of the datasource.
    Puppet::Resource::Param(Any, 'name', true),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The username for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_user'),

    # The password for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_password'),

    # The organization name to create the datasource on
    Puppet::Resource::Param(Any, 'organization'),

    # The specific backend to use for this `grafana_datasource`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana
    # : Support for Grafana datasources
    # 
    #   * Default for `kernel` == `Linux`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
