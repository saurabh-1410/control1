# This file was automatically generated on 2023-05-16 15:31:16 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage dashboards in Grafana
Puppet::Resource::ResourceType3.new(
  'grafana_dashboard',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The JSON representation of the dashboard.
    Puppet::Resource::Param(Any, 'content')
  ],
  [
    # The title of the dashboard.
    Puppet::Resource::Param(Any, 'title', true),

    # The folder to place the dashboard in (optional)
    Puppet::Resource::Param(Any, 'folder'),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The username for the Grafana server (optional)
    Puppet::Resource::Param(Any, 'grafana_user'),

    # The password for the Grafana server (optional)
    Puppet::Resource::Param(Any, 'grafana_password'),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # The organization name to create the datasource on
    Puppet::Resource::Param(Any, 'organization'),

    # The specific backend to use for this `grafana_dashboard`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana
    # : Support for Grafana dashboards stored into Grafana
    # 
    #   * Default for `kernel` == `Linux`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['title']
  },
  true,
  false)
