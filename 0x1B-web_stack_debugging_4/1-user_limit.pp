# Remove restriction of open files on user holberton

exec { 'remove hard limit':
command => 'sed -i "56d" /etc/security/limits.conf',
path    => '/bin/'
}

-> exec { 'remove soft limit':
command => 'sed -i "57d" /etc/security/limits.conf',
path    => '/bin/'
}
