# This file was automatically generated on 2023-05-16 12:28:25 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Verify connectivity to the Grafana API
Puppet::Resource::ResourceType3.new(
  'grafana_conn_validator',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # Arbitrary name of this resource
    Puppet::Resource::Param(Any, 'name', true),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # How long to wait for the API to be available
    Puppet::Resource::Param(Any, 'timeout'),

    # The specific backend to use for this `grafana_conn_validator`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # net_http
    # : A provider for the resource type `grafana_conn_validator`,
    #   which validates the Grafana API connection by attempting an http(s)
    #   connection to the Grafana server.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
