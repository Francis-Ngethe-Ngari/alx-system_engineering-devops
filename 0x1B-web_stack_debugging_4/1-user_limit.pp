# Remove restriction of open files on user holberton

exec { 'remove hard limit':
command => 'sed -i "/holberton hard nofile/s/5/20000/" /etc/security/limits.conf',
path    => '/bin/'
}

-> exec { 'remove soft limit':
command => 'sed -i "/holberton soft nofile/s/5/40000/" /etc/security/limits.conf',
path    => '/bin/'
}
