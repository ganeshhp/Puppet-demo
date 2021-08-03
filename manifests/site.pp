

node puppet.ec2.internal {

	include user1
	include webserver
}


node node1.ec2.internal {
	
	include lamp::apache
}
