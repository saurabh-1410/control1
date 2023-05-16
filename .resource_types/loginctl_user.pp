# This file was automatically generated on 2023-05-16 12:28:27 +0100.
# Use the 'puppet generate types' command to regenerate this file.

Puppet::Resource::ResourceType3.new(
  'loginctl_user',
  [
    # Whether linger is enabled for the user.
    # 
    # Valid values are `enabled`, `disabled`.
    Puppet::Resource::Param(Enum['enabled', 'disabled'], 'linger')
  ],
  [
    # An arbitrary name used as the identity of the resource.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `loginctl_user`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # ruby
    # : custom provider to manage systemd user sessions/linger
    # 
    #   * Required binaries: `loginctl`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
