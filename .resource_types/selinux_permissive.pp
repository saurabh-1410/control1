# This file was automatically generated on 2023-05-16 15:31:18 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage SELinux permissive types.
Puppet::Resource::ResourceType3.new(
  'selinux_permissive',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # The SELinux type that should be permissive
    Puppet::Resource::Param(Any, 'seltype', true),

    # A read-only attribue indicating whether the type is locally customized
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'local'),

    # The specific backend to use for this `selinux_permissive`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # semanage
    # : Support managing SELinux permissive types definitions via semanage
    # 
    #   * Required binaries: `semanage`.
    #   * Default for `kernel` == `Linux`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['seltype']
  },
  true,
  false)
