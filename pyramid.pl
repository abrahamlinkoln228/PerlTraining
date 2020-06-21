#!/usr/bin/perl
use warnings;
use strict;

my @a = (1..5);
for(@a){
	my @b = (1..$_);
	for(@b){
	print("#");
	}
	print("\n");
}
