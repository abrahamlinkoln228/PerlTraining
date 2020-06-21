#!/usr/bin/perl
use warnings;
use strict;

sub  trim { my $s = shift; $s =~ s/^\s+|\s+$//g; return $s };

sub parsing_case { my $y = shift; $y =~ s/^\s+[0-9]{4}\s[0-9]{4}-[0-9]{2}-[0-9]{2}\s|\s+$//g; return $y };


my $filename = 'payments.txt';

open(FH, '<', $filename) or die $!;

print("_________________________\n");
print("| User     | Amount | \n");
print("-------------------------- \n");
while(<FH>){
	if(trim($_) eq ""){

	} else {
		#my $line = trim($_);
		print('|');
		my $line = parsing_case($_);
		my @words = split / /, $line;
		print($words[0]);
		my $len = length($words[0]);
		my @tab = ($len..10);
		for(@tab){
		print(" ");
		}
		print("| ");
		print(@words[1]);
		print("   |");
		print("\n");
		
	}
}

close(FH);
