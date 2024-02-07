# This file was automatically generated on 2023-05-16 15:31:17 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage resource memberships in Grafana
Puppet::Resource::ResourceType3.new(
  'grafana_membership',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The role to apply to the membership (Admin, Editor, Viewer)
    # 
    # Valid values are `Admin`, `Editor`, `Viewer`.
    Puppet::Resource::Param(Enum['Admin', 'Editor', 'Viewer'], 'role')
  ],
  [
    # The name of the membership.
    Puppet::Resource::Param(Any, 'name', true),

    # The name of the user to add membership for
    Puppet::Resource::Param(Any, 'user_name'),

    # The name of the target to add membership for
    Puppet::Resource::Param(Any, 'target_name'),

    # The name of the organization to add membership for (team only)
    Puppet::Resource::Param(Any, 'organization'),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The username for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_user'),

    # The password for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_password'),

    # The underlying type of the membership (organization, team)
    # 
    # Valid values are `organization`, `team`.
    Puppet::Resource::Param(Enum['organization', 'team'], 'membership_type'),

    # The specific backend to use for this `grafana_membership`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana
    # : Support for Grafana memberships
    # 
    #   * Default for `kernel` == `Linux`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
