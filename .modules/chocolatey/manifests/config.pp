# @summary Handles configuration of Chocolatey
#
# @api private
class chocolatey::config {
  assert_private()

  # this will require a second converge when choco is not
  # installed the first time through. This is on purpose
  # as we don't want to try to set these values for a
  # version less than 0.9.9 and we don't know what the
  # user may link to - it could be an older version of
  # Chocolatey

  $_choco_version = $chocolatey::chocolatey_version ? {
    undef   => '0',
    default => $chocolatey::chocolatey_version
  }

# lint:ignore:80chars
  if versioncmp($_choco_version, '0.9.9.0') >= 0 and versioncmp($_choco_version, '0.9.10.0') < 0 {
    $_choco_exe_path = "${chocolatey::choco_install_location}\\bin\\choco.exe"

    $_enable_autouninstaller = $chocolatey::enable_autouninstaller ? {
      false => 'disable',
      default => 'enable'
    }

    exec { "chocolatey_autouninstaller_${_enable_autouninstaller}":
      path        => $facts['path'],
      command     => "${_choco_exe_path} feature -r ${_enable_autouninstaller} -n autoUninstaller",
      unless      => "cmd.exe /c ${_choco_exe_path} feature list -r | findstr /B /I /C:\"autoUninstaller - [${_enable_autouninstaller}d]\"",
      environment => ["ChocolateyInstall=${chocolatey::choco_install_location}"],
    }
  }
# lint:endignore
}
