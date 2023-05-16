# This file was automatically generated on 2023-05-16 12:28:26 +0100.
# Use the 'puppet generate types' command to regenerate this file.

# Manage Grafana LDAP servers for LDAP authentication.
Puppet::Resource::ResourceType3.new(
  'grafana_ldap_server',
  [

  ],
  [
    # A unique identified for this LDAP server.
    Puppet::Resource::Param(Any, 'title', true),

    # The servers to perform LDAP authentication at
    Puppet::Resource::Param(Any, 'hosts'),

    # The port to connect at the LDAP servers (389 for TLS/plaintext, 636 for SSL [ldaps], optional)
    Puppet::Resource::Param(Any, 'port'),

    # Set to true if you want to perform LDAP via a SSL-connection (not meant to be for TLS, optional)
    # 
    # Valid values are `true`, `false`, `yes`, `no`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'yes', 'no']], 'use_ssl'),

    # Set to true if you want to perform LDAP via a TLS-connection (not meant to be for SSL, optional)
    # 
    # Valid values are `true`, `false`, `yes`, `no`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'yes', 'no']], 'start_tls'),

    # Set to true to disable verification of the LDAP server's SSL certificate (for TLS and SSL, optional)
    # 
    # Valid values are `true`, `false`, `yes`, `no`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'yes', 'no']], 'ssl_skip_verify'),

    # The root ca-certificate to verify the LDAP server's SSL certificate against (for TLS and SSL, optional)
    Puppet::Resource::Param(Any, 'root_ca_cert'),

    # If the LDAP server requires certificate-based authentication, specify the client's certificate (for TLS and SSL, optional)
    Puppet::Resource::Param(Any, 'client_cert'),

    # If the LDAP server requires certificate-based authentication, specify the client's certificate (for TLS and SSL, optional)
    Puppet::Resource::Param(Any, 'client_key'),

    # If the LDAP server requires authentication (i.e. non-anonymous), provide the distinguished-name (dn) here (optional)
    Puppet::Resource::Param(Any, 'bind_dn'),

    # If the LDAP server requires authentication (i.e. non-anonymous), provide the password (optional)
    Puppet::Resource::Param(Any, 'bind_password'),

    # A search-filter to be used when querying LDAP for user-accounts (optional)
    Puppet::Resource::Param(Any, 'search_filter'),

    # The one or more base-dn to be used when querying LDAP for user-accounts (optional)
    Puppet::Resource::Param(Any, 'search_base_dns'),

    # A search-filter to be used when querying LDAP for group-accounts (optional)
    Puppet::Resource::Param(Any, 'group_search_filter'),

    # The attribute to be used to locate matching user-accounts in the group (optional)
    Puppet::Resource::Param(Any, 'group_search_filter_user_attribute'),

    # The base-dn to be used when querying LDAP for group-accounts (optional)
    Puppet::Resource::Param(Any, 'group_search_base_dns'),

    # Mapping LDAP attributes to their Grafana user-account-properties (optional)
    Puppet::Resource::Param(Any, 'attributes')
  ],
  {
    /(?m-ix:(.*))/ => ['title']
  },
  true,
  false)
