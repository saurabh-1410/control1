## site.pp ##

# This file (./manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
# https://puppet.com/docs/puppet/latest/dirs_manifest.html
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition if you want to use it.

## Active Configurations ##

# Disable filebucket by default for all File resources:
# https://github.com/puppetlabs/docs-archive/blob/master/pe/2015.3/release_notes.markdown#filebucket-resource-no-longer-created-by-default
File { backup => false }

## Node Definitions ##

# The default node definition matches any node lacking a more specific node
# definition. If there are no other node definitions in this file, classes
# and resources declared in the default node definition will be included in
# every node's catalog.
#
# Note that node definitions in this file are merged with node data from the
# Puppet Enterprise console and External Node Classifiers (ENC's).
#
# For more on node definitions, see: https://puppet.com/docs/puppet/latest/lang_node_definitions.html

node default {
  # classify according to role fact
#  if $facts.dig('bigbird', 'role') and defined($facts['bigbird']['role']) {
#    include $facts['bigbird']['role']
#  } else {
#    include role::agent
#  }
}
node 'sdclnt-cec56b-0.us-west1-c.c.customer-support-scratchpad.internal' {
class { 'docker':
  version => latest,
}
}

node 'sdwind2019.c.customer-support-scratchpad.internal' {
 dsc_scheduledtask { 'SessionPopup' :
  dsc_taskname => 'SessionPopup',
  dsc_actionexecutable => powershell,
  dsc_actionarguments =>'-File "C:\Program Files\windowspowershell\scripts\Epic.Wss.sessionpopup\Epic.Wss.SessionPopup.ps1"',
  dsc_scheduletype => 'AtLogOn',
  dsc_enable => $enable,
  dsc_ensure => $ensure,
 }
}

node 'postgres.c.customer-support-scratchpad.internal' {
  class {'newuser':
    username => 'testuser1',
    passowrd_command => '.tmp/genpass.sh',
  }
}
