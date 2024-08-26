# Configure SSH client to use Private Key and refuse password
# authentication.

file {'/etc/ssh/ssh_config':
ensure => 'present',
}

file_line { 'Disable password auth':
path    => '/etc/ssh/ssh_config',
line    => 'PasswordAuthentication no',
match   => 'PasswordAuthentication yes'
replace => true
}

file_line { 'Use private key':
ensure => 'present',
line   => 'IdentityFile ~/.ssh/school',
match  => '^IdentityFile',
path   => '/etc/ssh/ssh_config',
}
