#!perl -T

use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;
use Map::Tube::Tokyo;

eval "use Test::Map::Tube";
plan skip_all => "Test::Map::Tube required." if $@;

ok_map(Map::Tube::Tokyo->new);
