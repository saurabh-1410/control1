# This file was automatically generated on 2023-05-16 15:31:16 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Type representing a Docker network
Puppet::Resource::ResourceType3.new(
  'docker_network',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The network driver used by the network
    Puppet::Resource::Param(Any, 'driver'),

    # The IPAM (IP Address Management) driver
    Puppet::Resource::Param(Any, 'ipam_driver'),

    # The ID of the network provided by Docker
    Puppet::Resource::Param(Any, 'id')
  ],
  [
    # The name of the network
    Puppet::Resource::Param(Any, 'name', true),

    # The subnet in CIDR format that represents a network segment
    Puppet::Resource::Param(Any, 'subnet'),

    # An ipv4 or ipv6 gateway for the server subnet
    Puppet::Resource::Param(Any, 'gateway'),

    # The range of IP addresses used by the network
    Puppet::Resource::Param(Any, 'ip_range'),

    # Auxiliary ipv4 or ipv6 addresses used by the Network driver
    Puppet::Resource::Param(Any, 'aux_address'),

    # Additional options for the network driver
    Puppet::Resource::Param(Any, 'options'),

    # Additional flags for the 'docker network create'
    Puppet::Resource::Param(Any, 'additional_flags'),

    # The specific backend to use for this `docker_network`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # ruby
    # : Support for Docker Networking
    # 
    #   * Required binaries: `docker`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
