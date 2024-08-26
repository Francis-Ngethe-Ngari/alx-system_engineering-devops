# Configure SSH client to use Private Key and refuse password
# authentication.

package { 'openssh-clinet':
ensure => installed,
}

file { 'etc/ssh/sshd_config':
ensure  => file,
mode    => '0644',
owner   => 'root',
group   => 'root',
content => '/etc/ssh/sshd_config.erb',
require => package['openssh-client'],
}
