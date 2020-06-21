#!/usr/bin/perl
use warnings;
use strict;

if($ARGV[0] eq '' || $ARGV[1] eq ''){
	print("the arguments are empty, please specify the height as first arg, and the dogs array as second parameter \n");

	exit 0;
}

my $i = 1;
my @a = (1..$ARGV[0]);
my $length = @a;
for(@a){
	my @b = (1..$_);
        my $spacing = $length - @b;
        my @c = (1..$spacing);
                for(@c){
                        print(" ");
                }
	for(@b){
		if($i == $ARGV[1]){
			print("@");
		} else {
		print("#");
		}
	}
	print("\n");
	$i++;
}
