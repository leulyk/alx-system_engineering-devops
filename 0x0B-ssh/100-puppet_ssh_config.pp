# SSH client configuration exercise

class { 'ssh::client':
    'Host 35.237.86.168' => {
        'PasswordAuthentication' => 'no',
        'IdentityFile'           => '~/.ssh/school'
    }
}
