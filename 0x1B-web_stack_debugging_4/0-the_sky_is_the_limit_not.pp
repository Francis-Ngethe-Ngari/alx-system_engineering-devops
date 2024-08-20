# Modify nginx to eliminate HTTP request failures.

exec { 'modify limit':
command => 'sed -i "s/15/4096/" /etc/default/nginx',
path    => '/bin/'
}

-> exec { 'Restart nginx':
command => 'nginx restart',
path    => '/etc/init.d/'
}
