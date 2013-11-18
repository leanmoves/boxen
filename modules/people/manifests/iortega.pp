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
  include istatmenus4
  include kindle
  include calibre
  include pathfinder

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
