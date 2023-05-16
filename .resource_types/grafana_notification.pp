# This file was automatically generated on 2023-05-16 12:28:26 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage notification in Grafana
Puppet::Resource::ResourceType3.new(
  'grafana_notification',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The notification type
    Puppet::Resource::Param(Any, 'type'),

    # Whether the notification is the default one
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'is_default'),

    # Whether automatic message resending is enabled or not
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'send_reminder'),

    # The notification reminder frequency
    Puppet::Resource::Param(Any, 'frequency'),

    # Additional JSON data to configure the notification
    Puppet::Resource::Param(Any, 'settings')
  ],
  [
    # The name of the notification.
    Puppet::Resource::Param(Any, 'name', true),

    # The absolute path to the API endpoint
    Puppet::Resource::Param(Any, 'grafana_api_path'),

    # The URL of the Grafana server
    Puppet::Resource::Param(Any, 'grafana_url'),

    # The username for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_user'),

    # The password for the Grafana server
    Puppet::Resource::Param(Any, 'grafana_password'),

    # The specific backend to use for this `grafana_notification`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana
    # : Support for Grafana notifications
    # 
    #   * Default for `kernel` == `Linux`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
