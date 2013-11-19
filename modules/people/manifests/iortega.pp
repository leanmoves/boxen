class people::iortega {
  include emacs
  include textmate::textmate2::nightly
  include sublime_text_2
  include chrome
  include iterm2::stable
  include xctool
  include spectacle
  include evernote
  include appcleaner
  include kindle
  include pathfinder
  include vlc
  include transmission
  include ohmyzsh

  include projects::puntospoint
  include projects::talentboom
  include projects::talentboomapp

  # Ruby conf
  $version = "1.9.3"
  class { 'ruby::global':
    version => $version
  }

  ruby::gem { "bundler for ${version}":
    gem     => 'bundler',
    ruby    => $version,
    version => '~> 1.2.0'
  }
  # Gems for irbrc
  ruby::gem { "looksee for ${version}":
    gem     => 'looksee',
    ruby    => $version,
    version => '~> 1.1.0'
  }

  ruby::gem { "wirble for ${version}":
    gem     => 'wirble',
    ruby    => $version,
    version => '~> 0.1.3'
  }

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${::boxen_srcdir}/dotfiles"

  # file { $::boxen_srcdir:
  #   ensure  => directory
  # }

  repository { $dotfiles:
    source  => 'iortega/dotfiles',
    require => File[$::boxen_srcdir]
  }
}
