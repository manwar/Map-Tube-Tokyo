#!perl

use strict; use warnings;
use Test::More tests => 4;
use Map::Tube::Tokyo;

my $map = Map::Tube::Tokyo->new;

eval { $map->get_shortest_route(); };
like($@, qr/ERROR: Either FROM\/TO node is undefined/);

eval { $map->get_shortest_route('Magome'); };
like($@, qr/ERROR: Either FROM\/TO node is undefined/);

eval { $map->get_shortest_route('XYZ', 'Magome'); };
like($@, qr/\QMap::Tube::get_shortest_route(): ERROR: Received invalid FROM node 'XYZ'\E/);

eval { $map->get_shortest_route('Magome', 'XYZ'); };
like($@, qr/\QMap::Tube::get_shortest_route(): ERROR: Received invalid TO node 'XYZ'\E/);
