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
