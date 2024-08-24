# install flask from pip3

exec { 'install flask pakage':
  command => 'pip install Flask==2.1.0',
  path    => '/bin/',
}

-> exec { 'install werkzaug pakage':
    command => 'pip install werkzeug==2.1.1',
    path    => '/bin/',
}
