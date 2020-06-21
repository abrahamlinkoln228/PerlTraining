#!/usr/bin/perl
use warnings;
use strict;

if($ARGV[0] eq '' || $ARGV[1] eq ''){
	print("the arguments are empty, please specify the array length as first arg, and the maximal array element as second parameter \n");

	exit 0;
}

my @rand = map { int(rand($ARGV[1]+1)) } ( 1..$ARGV[0] );
my @count=(0)x$ARGV[1];

my $a=0;

foreach my $i (@rand) {
	@count[$i]++;
	print "value of $a 'ths element: $i\n";
	$a++;
}

print ("    \n\n\n\n\n\n");

$a = 0;
foreach my $i (@count) {
   print "value of $a: $i\n";
	$a++;
}

