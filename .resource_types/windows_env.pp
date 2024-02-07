# This file was automatically generated on 2023-05-16 15:31:19 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manages Windows environment variables
Puppet::Resource::ResourceType3.new(
  'windows_env',
  [
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # What type of registry key to use for the variable. Determines whether interpolation of '%' enclosed names will occur
    # 
    # Valid values are `REG_SZ`, `REG_EXPAND_SZ`.
    Puppet::Resource::Param(Enum['REG_SZ', 'REG_EXPAND_SZ'], 'type')
  ],
  [
    # The environment variable name
    Puppet::Resource::Param(Any, 'variable', true),

    # The environment variable value
    Puppet::Resource::Param(Any, 'value', true),

    # Set the user whose environment will be modified
    Puppet::Resource::Param(Any, 'user', true),

    # How to set the value of the environment variable. E.g. replace existing value, append to existing value...
    # 
    # Valid values are `clobber`, `insert`, `append`, `prepend`.
    Puppet::Resource::Param(Enum['clobber', 'insert', 'append', 'prepend'], 'mergemode'),

    # How to separate environment variables with multiple values (e.g. PATH)
    Puppet::Resource::Param(Any, 'separator'),

    # Set the timeout (in ms) for environment refreshes. This is per top level window, so delay may be longer than provided value.
    Puppet::Resource::Param(Any, 'broadcast_timeout'),

    # The specific backend to use for this `windows_env`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # windows_env
    # : Manage Windows environment variables
    # 
    #   * Default for `osfamily` == `windows`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /^(.*?)=(.*)$/ => ['variable', 'value'],
    /^([^=]+)$/ => ['variable']
  },
  true,
  false)
