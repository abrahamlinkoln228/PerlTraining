    #
   ##
  ###
 ####
#####
#!/usr/bin/perl
use warnings;
use strict;

my @a = (1..5);
my $length = @a;
#print($length);
for(@a){
	my @b = (1..$_);
        my $spacing = $length - @b;
#        print($spacing);
        my @c = (1..$spacing);
                for(@c){
                        print(" ");
                }
	for(@b){
	
	print("#");
	}
	print("\n");
}
