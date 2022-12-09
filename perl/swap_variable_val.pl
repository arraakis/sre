#!/usr/bin/perl

use strict;
use warnings;

my $var1 = 5;
my $var2 = 10;

print "Before Swap: var1 => $var1, var2 => $var2 \n"; # Before Swap: var1 => 5, var2 => 10 

# swap variable values
($var1, $var2) = ($var2, $var1);

print "After Swap: var1 => $var1, var2 => $var2 \n"; # After Swap: var1 => 10, var2 => 5
