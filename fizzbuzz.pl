#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my $limit = $ARGV[0];
my $fizzbuzz = {
                fizz => [],
                buzz => [],
                fizzbuzz => [],
                };

for my $num (1 .. $limit){
    if($num % 15 == 0){
        push @{$fizzbuzz->{fizzbuzz}}, $num;
    }
    elsif($num % 3 == 0){
        push @{$fizzbuzz->{fizz}}, $num;
    }
    elsif($num % 5 == 0){
        push @{$fizzbuzz->{buzz}}, $num;
    }
    else{
    }
}

print Dumper($fizzbuzz);

