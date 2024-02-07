# This file was automatically generated on 2023-05-16 15:31:17 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage teams in Grafana
Puppet::Resource::ResourceType3.new(
  'grafana_team',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The UID or name of the home dashboard folder
    Puppet::Resource::Param(Any, 'home_dashboard_folder'),

    # The id or name of the home dashboard
    Puppet::Resource::Param(Any, 'home_dashboard'),

    # The theme to use for the team
    Puppet::Resource::Param(Any, 'theme'),

    # The timezone to use for the team
    Puppet::Resource::Param(Any, 'timezone')
  ],
  [
    # The name of the team
    Puppet::Resource::Param(Any, 'name', true),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The username for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_user'),

    # The password for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_password'),

    # The organization the team belongs to
    Puppet::Resource::Param(Any, 'organization'),

    # The email for the team
    Puppet::Resource::Param(Any, 'email'),

    # The specific backend to use for this `grafana_team`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana
    # : Support for Grafana permissions
    # 
    #   * Default for `kernel` == `Linux`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
