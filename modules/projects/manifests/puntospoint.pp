class projects::puntospoint {
  include postgresql
  include redis

  boxen::project { 'puntospoint':
    postgresql    => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'cabrerabywaters/showtime'
  }
}
