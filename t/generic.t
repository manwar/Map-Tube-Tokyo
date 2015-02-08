#!perl

use 5.006;
use strict; use warnings;
use Test::More tests => 4;
use Map::Tube::Tokyo;

eval { Map::Tube::Tokyo->new()->get_shortest_route(); };
like($@, qr/ERROR: Either FROM\/TO node is undefined/);

eval { Map::Tube::Tokyo->new()->get_shortest_route('Magome'); };
like($@, qr/ERROR: Either FROM\/TO node is undefined/);

eval { Map::Tube::Tokyo->new()->get_shortest_route('XYZ', 'Magome'); };
like($@, qr/\QMap::Tube::get_shortest_route(): ERROR: Received invalid FROM node 'XYZ'\E/);

eval { Map::Tube::Tokyo->new()->get_shortest_route('Magome', 'XYZ'); };
like($@, qr/\QMap::Tube::get_shortest_route(): ERROR: Received invalid TO node 'XYZ'\E/);
