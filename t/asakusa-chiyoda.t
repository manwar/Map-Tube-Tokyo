#!perl
use strict; use warnings;
use Test::More tests => 7;
use Map::Tube::Tokyo;

my $subway = Map::Tube::Tokyo->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    is_deeply($subway->get_shortest_route($from, $to), _expected_route($expected), $description);
}

sub _expected_route {
    my ($route) = @_;
    my $nodes   = [];
    foreach my $name (split /\,/,$route) {
        push @$nodes, $subway->get_node_by_name($name);
    }

    return Map::Tube::Route->new(
       { from  => $nodes->[0],
         to    => $nodes->[-1],
         nodes => $nodes });
}

__DATA__
Route 1|Takaracho|Otemachi|Takaracho,Nihombashi,Otemachi
Route 2|   Takaracho|Otemachi|Takaracho,Nihombashi,Otemachi
Route 3|Takaracho|   Otemachi|Takaracho,Nihombashi,Otemachi
Route 4|Takaracho   |Otemachi|Takaracho,Nihombashi,Otemachi
Route 5|Takaracho|Otemachi   |Takaracho,Nihombashi,Otemachi
Route 6|  Takaracho   |  Otemachi  |Takaracho,Nihombashi,Otemachi
Route 7|  takaracho   |  otemachi  |Takaracho,Nihombashi,Otemachi
