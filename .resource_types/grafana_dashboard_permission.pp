# This file was automatically generated on 2023-05-16 15:31:17 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage dashboard permissions in Grafana
Puppet::Resource::ResourceType3.new(
  'grafana_dashboard_permission',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The role to apply
    # 
    # Valid values are `Admin`, `Edit`, `View`.
    Puppet::Resource::Param(Enum['Admin', 'Edit', 'View'], 'permission')
  ],
  [
    # The name of the permission.
    Puppet::Resource::Param(Any, 'name', true),

    # User to add the permission for
    Puppet::Resource::Param(Any, 'user'),

    # Team to add the permission for
    Puppet::Resource::Param(Any, 'team'),

    # Dashboard to modify permissions for
    Puppet::Resource::Param(Any, 'dashboard'),

    # The name of the organization to add permission for
    Puppet::Resource::Param(Any, 'organization'),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The username for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_user'),

    # The password for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_password'),

    # The specific backend to use for this `grafana_dashboard_permission`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana
    # : Support for Grafana dashboard permissions
    # 
    #   * Default for `kernel` == `Linux`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
