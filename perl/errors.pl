#!/bin/usr/perl

use strict;
use warnings;


open my( $fh ), '<', 'does_not_exist.txt' or die "Couldn't open file! $!";
close ($fh);