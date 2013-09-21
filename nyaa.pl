#!/usr/bin/env perl


use strict;
use warnings;

use Acme::Nyaa;
my $kijitora = Acme::Nyaa->new;

#print $kijitora->cat( \'猫がかわいい。' );  # => 猫がかわいいニャー。
#print $kijitora->neko( \'神と和解せよ' );   # => ネコと和解せよ

my $input = <STDIN>;
chomp $input;

print $kijitora->cat(\$input);
