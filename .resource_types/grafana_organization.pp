# This file was automatically generated on 2023-05-16 15:31:17 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage organizations in Grafana
Puppet::Resource::ResourceType3.new(
  'grafana_organization',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # The name of the organization.
    Puppet::Resource::Param(Any, 'name', true),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The username for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_user'),

    # The password for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_password'),

    # The specific backend to use for this `grafana_organization`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana
    # : Support for Grafana organizations
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
