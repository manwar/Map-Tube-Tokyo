use strict; use warnings;
use Test::More tests => 6;
use Map::Tube::Tokyo;

my $subway = Map::Tube::Tokyo->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    is($subway->get_shortest_route($from, $to), $expected, $description);
}

__DATA__
Route 1|Takaracho|Otemachi|Takaracho (Asakusa), Nihombashi (Asakusa), Otemachi (Chiyoda)
Route 2|   Takaracho|Otemachi|Takaracho (Asakusa), Nihombashi (Asakusa), Otemachi (Chiyoda)
Route 3|Takaracho|   Otemachi|Takaracho (Asakusa), Nihombashi (Asakusa), Otemachi (Chiyoda)
Route 4|Takaracho   |Otemachi|Takaracho (Asakusa), Nihombashi (Asakusa), Otemachi (Chiyoda)
Route 5|Takaracho|Otemachi   |Takaracho (Asakusa), Nihombashi (Asakusa), Otemachi (Chiyoda)
Route 6|  Takaracho   |  Otemachi  |Takaracho (Asakusa), Nihombashi (Asakusa), Otemachi (Chiyoda)
