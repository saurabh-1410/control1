# This file was automatically generated on 2023-05-16 12:28:26 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage users in Grafana
Puppet::Resource::ResourceType3.new(
  'grafana_user',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The full name of the user.
    Puppet::Resource::Param(Any, 'full_name'),

    # The password for the user
    Puppet::Resource::Param(Any, 'password'),

    # The email for the user
    Puppet::Resource::Param(Any, 'email'),

    # The theme for the user
    Puppet::Resource::Param(Any, 'theme'),

    # Whether the user is a grafana admin
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'is_admin'),

    # A hash of organizations and roles
    Puppet::Resource::Param(Any, 'organizations')
  ],
  [
    # The username of the user.
    Puppet::Resource::Param(Any, 'name', true),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The username for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_user'),

    # The password for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_password'),

    # The specific backend to use for this `grafana_user`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana
    # : Manages local Grafana users
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
