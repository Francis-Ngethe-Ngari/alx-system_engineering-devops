# install flask from pip3

exec { 'install flask package':
command => 'pip3 install flask==2.1.0',
path    => '/bin/'
}
