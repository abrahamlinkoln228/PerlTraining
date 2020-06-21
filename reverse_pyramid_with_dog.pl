    #
   ##
  ###
 ####
#####
#!/usr/bin/perl
use warnings;
use strict;

my $i = 1;
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
#	print("$_");
#	print($i);
		if($i == 3){
			print("@");
		} else {
		print("#");
		}
	}
	print("\n");
	$i++;
}
