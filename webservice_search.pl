#!/usr/bin/env perl

use strict;
use warnings;

use WebService::Simple;
my $service = WebService::Simple->new(
    base_url        => 'http://gdata.youtube.com/feeds/api/videos',
    response_parser => 'JSON'
);
my $res = $service->get({ q => 'YAPC::Asia', alt => 'json' });
my $ref = $res->parse_response();

for my $entry ( @{$ref->{feed}{entry}} ) {
    my $url   = $entry->{link}[0]{href};
    my $title = $entry->{'media$group'}{'media$title'}{'$t'};
    my $category = $entry->{'media$group'}{'media$category'}[0]{label};
    print "[$category] $title: $url\n";
}

