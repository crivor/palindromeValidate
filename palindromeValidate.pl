#!/usr/bin/perl
#
# Basic script for reading in a file
# storing a file as a string
# reversing the string
# and checking to see if the reverse
# equals the original
#

use strict;
use warnings;
use File::Slurp;

my $forward = read_file( 'shortPalindrome.txt' );
my $reverse = reverse $forward;

print $forward, "\n";
print $reverse, "\n";

$forward =~ s/[[:punct:]]//g;
$reverse =~ s/[[:punct:]]//g;

$reverse =~ s/\s//g;
$forward =~ s/\s//g;

if ($forward eq $reverse) { 
	print "It's a palindrome!\n";
} else {
	print "It's not a palindrome!\n";
}
