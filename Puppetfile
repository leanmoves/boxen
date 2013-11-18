# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "foreman",    "1.1.0"
github "gcc",        "2.0.1"
github "git",        "1.3.6"
github "go",         "2.0.1"
github "homebrew",   "1.6.0"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.5.0"
github "openssl",    "1.0.0"
github "phantomjs",  "2.1.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.7.4"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "skype",      "1.0.6"
github "dropbox",    "1.1.2"
github "sysctl",     "1.0.0"
github "postgresql", "2.1.0"
github "heroku",     "2.1.1"
github "openssl",    "1.0.0"
github "tmux",       "1.0.2"
github "wget",       "1.0.0"
github "elasticsearch", "2.0.0"
github "redis",      "1.1.0"  

# Optional
github "chrome",     "1.1.2"
github "emacs",      "1.1.0"
github "textmate",   "1.1.0"
github "sublime_text_2", "1.1.2"
github "iterm2",     "1.0.4"
github "xctool",     "0.0.1"
github "spectacle",  "1.0.0"
github "evernote",   "2.0.4"
github "appcleaner", "1.0.0"
github "istatmenus4", "1.0.0"
github "kindle",     "1.0.1"
github "osx",        "2.0.0"
github "calibre",    "1.1"
github "vlc",        "1.0.5"
github "transmission", "1.0.0"
github "pathfinder", "0.0.1", :repo => "bradhouse/puppet-pathfinder"
