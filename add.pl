#!/usr/local/bin/perl

use CGI qw(:standard);

print "Content-Type: text/html\n\n";

my $n1 = param("n1");
my $n2 = param("n2");
my $sum = $n1 + $n2;
#sleep(2);
print($sum);

