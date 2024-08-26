# Configure SSH client to use Private Key and refuse password
# authentication.

package {'openssh-client':
ensure => 'installed',
}

file_line { 'Disable password auth':
path    => '/etc/ssh/ssh_config',
line    => 'PasswordAuthentication no',
match   => 'PasswordAuthentication yes',
replace => true
}

file_line { 'Use private key':
path  => '/etc/ssh/ssh_config',
line  => 'IdentityFile ~/.ssh/school',
match => '^IdentityFile',
}
