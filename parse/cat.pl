use File::Cat;
 
cat ('payments.txt', \*STDOUT)
      or die "Can't cat /etc/motd: $!";
