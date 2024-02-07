# @summary Enables the execution of agent_status_check fact
#
# Adding this class will enable the execution of the agent_status_check fact, 
# This allows the fact to be targeted to a specific agent or group of agents
#
# @example
#   include pe_status_check::agent_status_enable
# @param [Boolean] agent_status_enabled
#  Flag to enable or disable agent_status_check fact
class pe_status_check::agent_status_enable (
Boolean $agent_status_enabled = true,
){
  $agent_status_enabled_file = $facts['os']['family'] ? {
    'windows' => "${facts['common_appdata']}/PuppetLabs/puppet/cache/state/status_check_enable",
    default   => '/opt/puppetlabs/puppet/cache/state/status_check_enable',
  }
$agent_status_enabled_file_ensure = $agent_status_enabled ? {
  true     => 'file',
  default => 'absent',
}
file { $agent_status_enabled_file:
  ensure => $agent_status_enabled_file_ensure,
  mode   => '0664',
}
}
