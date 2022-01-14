# Configure our servers with puppet

exec { 'update apt':
    command => 'sudo apt update -y',
    path    => '/usr/bin/'
}

exec { 'install Nginx':
    command => 'sudo apt install -y nginx',
    path    => '/usr/bin/'
}

exec { 'update firewall':
    command => "sudo ufw allow 'Nginx http'",
    path    => '/usr/bin/:/usr/sbin/'
}

exec { 'index page return':
    command => 'echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html',
    path    => '/usr/bin/'
}

exec { '404 page':
    command => 'echo "Ceci n\'est pas une page" | sudo tee /usr/share/nginx/html/custom_404.html',
    path    => '/usr/bin/'
}

file { 'Nginx configuration, updated to include redirections':
    ensure  => file,
    path    => '/etc/nginx/sites-enabled/default',
    content =>
"server {
	listen 80 default_server;
	listen [::]:80 default_server;

	root /var/www/html;

	# Add index.php to the list if you are using PHP
	index index.html index.htm index.nginx-debian.html;

	server_name _;
	rewrite ^/redirect_me google.com permanent;
	add_header X-Served-By \$hostname;
	error_page 404 /custom_404.html;
	location = /custom_404.html {
		root /usr/share/nginx/html;
		internal;
	}

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files \$uri \$uri/ =404;
	}
}"
}

exec { 'restart nginx':
    command => 'sudo service nginx restart',
    path    => '/usr/bin/:/usr/sbin/'
}
