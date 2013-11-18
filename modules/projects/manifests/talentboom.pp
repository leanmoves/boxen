class projects::talentboom {
  include postgresql
  include elasticsearch
  include redis
  include imagemagick

  boxen::project { 'talentboom':
    elasticsearch => true,
    postgresql    => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'zacharykahn/talentboom'
  }
}
