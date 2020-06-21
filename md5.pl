use Digest::MD5 qw(md5_base64);


if($ARGV[0] eq ""){
	$input = <STDIN>;
} else {
	$input = $ARGV[0];
}


$digest = md5_base64($input);
print $digest;
print "\n";
