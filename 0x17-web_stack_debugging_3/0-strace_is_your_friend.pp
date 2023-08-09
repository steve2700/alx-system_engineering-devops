# Using strace, find out why Apache is returning a 500 error.
exec { 'replace phpp with php':
  command  => 'sed -ie \'s/class-wp-locale.phpp/class-wp-locale.php/\' /var/www/html/wp-settings.php',
  provider => shell
}

#restart apache2 to make changes 
exec { 'restart apache2 service':
  command  => 'service apache2 restart',
  provider => shell
}
