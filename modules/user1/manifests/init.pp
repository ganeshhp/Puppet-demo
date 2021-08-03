class user1 {

        user {'user1':

         ensure => 'present',
         uid => 100,
         gid => 100,
         comment => 'generic user',
        }

        package {'nano':
         ensure => 'present',

        }


}
