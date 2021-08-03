class deploypackage {

	exec {'deployWAR':

	  command => 'cp /root/helloworldweb/target/Helloworldwebapp-dev.war /opt/tomcat/webapps/.'
	  provider => shell,
	  path => '/usr/bin/',
	}

}
