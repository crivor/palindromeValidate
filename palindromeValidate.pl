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

my $forward;

# Opens file. Reads file in line by line. chomps line endings. joins lines into a single string. closes file.
open(my $FH, '<', 'palindrome.txt') or die "Error: $!";
	while( <$FH> ) {
	my $line = $_;
	chomp($line);
	$forward .= $line;
	}
close $FH or die "Error: $!";

# remove non-alpha characters
$forward =~ s/(\W+)//g;

# transform text to lowercase
$forward = lc($forward);

# reverse operator is applied to forward to get the reverse string
my $reverse = reverse $forward;

# Outputs both forward and reverse so the human can see both strings
print $forward, "\n";
print $reverse, "\n";


# String Literal Evaluation
if ($forward eq $reverse) { 
	print "It's a palindrome!\n";
} else {
	print "It's not a palindrome!\n";
}
