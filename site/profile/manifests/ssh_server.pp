class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => ' +2GMjddQybW1frVFMM18YVwaI93krpjyBz9r64SwCYbJBCzN7OS/DC7XCQPBDy2IFJw7y/jenLw6oMEXgFMEZFOSvSTuVJWZIDlVj1GY1BkzUogRFfL2JpcoBlnPSu6uUPRdSZp5nZsdp9NQzUFTGQxDW5hynhILJTB9jJEhgrqrSwPzR1HZe02rAEaGV4ex/QcHfMJ2OLj+OWfqo8IL7jtO1vQ8EYLu27OfnZFP3Zw3RqtHd58R/upP',
	}  
}
