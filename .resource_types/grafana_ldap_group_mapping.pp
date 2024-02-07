# This file was automatically generated on 2023-05-16 15:31:17 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Map an LDAP group to a Grafana role.
Puppet::Resource::ResourceType3.new(
  'grafana_ldap_group_mapping',
  [

  ],
  [
    # A unique identifier of the resource
    Puppet::Resource::Param(Any, 'title', true),

    # The LDAP server config to apply the group-mappings on
    Puppet::Resource::Param(Any, 'ldap_server_name'),

    # The LDAP distinguished-name of the group
    Puppet::Resource::Param(Any, 'group_dn'),

    # The Grafana role the shall be assigned to this group
    # 
    # Valid values are `Admin`, `Editor`, `Viewer`.
    Puppet::Resource::Param(Enum['Admin', 'Editor', 'Viewer'], 'org_role'),

    # Additonal flag for Grafana > v5.3 to signal admin-role to Grafana
    # 
    # Valid values are `true`, `false`, `yes`, `no`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'yes', 'no']], 'grafana_admin')
  ],
  {
    /(?m-ix:(.*))/ => ['title']
  },
  true,
  false)
