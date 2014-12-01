#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More tests => 1;

BEGIN { use_ok('Map::Tube::Tokyo') || print "Bail out!\n"; }

diag( "Testing Map::Tube::Tokyo $Map::Tube::Tokyo::VERSION, Perl $], $^X" );
