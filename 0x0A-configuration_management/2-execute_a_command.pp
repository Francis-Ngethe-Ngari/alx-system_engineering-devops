# Terminate a process: killmenow

exec { 'kill a process':
command => 'pkill killmenow',
path    => '/bin/',
}
