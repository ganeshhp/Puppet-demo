class package_1 {

	user {'user1':

	 ensure => 'present',
	 uid => '3000',
	 gid => '3000',
	 comment => 'generic user',
	}
	
	package {'nano':
	 ensure => 'present',
	 
	}
}

