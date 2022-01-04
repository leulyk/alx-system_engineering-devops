# SSH client configuration exercise

exec {'SSH configuration':
    command => "echo -e 'Host 35.237.86.168\n\tPasswordAuthentication no\n\tIdentityFile ~/.ssh/school' >> ~/.ssh/config",
    path    => '/usr/bin'
}
