#!/usr/bin/env perl

use strict;
use warnings;

use WebService::Simple;
use Data::Dumper;
my $service = WebService::Simple->new(
    base_url => 'http://gdata.youtube.com/feeds/api/videos'
);
my $res = $service->get();
my $ref = $res->parse_response();
print Dumper $ref;
