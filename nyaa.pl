#!/usr/bin/env perl


use strict;
use warnings;

use Acme::Nyaa;

my $kijitora = Acme::Nyaa->new;
my $input = <STDIN>;
chomp $input;
print $kijitora->cat(\$input);
