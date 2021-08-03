class tomcat {

      exec {'download':
	command => 'wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.50/bin/apache-tomcat-9.0.50.tar.gz',
	path => '/usr/bin',
	provider => shell,
	}

      exec {'extract':
	command => 'tar -xvf apache-tomcat-9.0.50.tar.gz',
	path => '/usr/bin',
	provider => shell,
	}

      exec {'movetoopt':
	command => 'mv ./apache-tomcat-9.0.50 /opt/tomcat',
	path => '/usr/bin',
	provider => shell,
	}
}
