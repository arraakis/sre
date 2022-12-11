#!/usr/bin/perl

use strict;
use warnings;


for my $i (1..10) {
    if ($i % 3 == 0 && $i % 5 == 0) {
        print "FizzBuzz";
    }
    elsif ($i % 3 == 0 ) {
        print "Fizz";
    }
    elsif ($i % 5 == 0) {
        print "Buzz";
    } else {
        print $i;
    }

    print "\n";
}