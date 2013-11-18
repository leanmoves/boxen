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

  include projects::puntospoint

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/code"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'iortega/dotfiles',
    require => File[$my]
  }
}
