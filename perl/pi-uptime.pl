#!/usr/bin/perl

use strict;
use warnings;
use Net::OpenSSH;
use Data::Dumper qw(Dumper);

my $str = "root:*:0:0:System Administrator:/var/root:/bin/sh";

my ($username, $password, $uid, $gid, $real_name, $home, $shell) = split /:/, $str;
print "$username\n $password\n";