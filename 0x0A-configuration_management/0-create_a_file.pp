# Creating a file in /tmp/ dir

exec{ 'creating a file in tmp dir and add text':
command => 'touch /tmp/school',
path    => '/bin/'
}

-> exec { 'change file permission':
command => 'chmod 0744 /tmp/school',
path    => '/bin/'
}

-> exec { 'change file owner and group':
command => 'chwon www-data:www-data /tmp/school',
path    => '/bin/'
}

-> exec { 'Add text':
command => 'echo "I love Puppet" /tmp/school',
path    => '/bin/'
}
