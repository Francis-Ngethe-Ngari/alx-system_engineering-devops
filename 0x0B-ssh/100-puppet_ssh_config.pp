# Configure SSH client to use Private Key and refuse password
# authentication.

file { 'etc/ssh/sshd_config':
ensure  => file,
mode    => '0644',
owner   => 'root',
group   => 'root',
content => '
Host *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
',
}
