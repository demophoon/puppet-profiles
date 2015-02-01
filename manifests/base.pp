class profiles::base {
  $latest_packages = [
    'vim',
    'emacs',
    'zsh',
    'bash',
    'ntp',
  ]

  package { $latest_packages:
    ensure => latest,
  }

  class { 'r10k':
    remote => 'git@github.com:demophoon/puppet-environment.git',
  }
}
