package Map::Tube::Tokyo::Line::Asakusa;

$Map::Tube::Tokyo::Line::Asakusa::VERSION   = '0.13';
$Map::Tube::Tokyo::Line::Asakusa::AUTHORITY = 'cpan:MANWAR';

use 5.006;
use strict; use warnings;

=encoding utf8

=head1 NAME

Map::Tube::Tokyo::Line::Asakusa - Tokyo Subway Asakusa Line stations.

=head1 VERSION

Version 0.13

=head1 DESCRIPTION

Tokyo Subway Asakusa Line stations.

    +------------------+------------------------------+
    |                  |                              |
    | Station Name     | Connected To                 |
    |                  |                              |
    +------------------+------------------------------+
    | Nishi-magome     | Magome                       |
    | Magome           | Nishi-magome, Nakanobu       |
    | Nakanobu         | Magome, Togoshi              |
    | Togoshi          | Nakanobu, Gotanda            |
    | Gotanda          | Togoshi, Takanwadai          |
    | Takanawadai      | Gotanda, Sengakuji           |
    | Sengakuji        | Takanawadai, Mita            |
    | Mita             | Sengakuji, Diamon            |
    | Diamon           | Mita, Shimbashi              |
    | Shimbashi        | Diamon, Higashi-ginza        |
    | Higashi-ginza    | Shimbashi, Takaracho         |
    | Takaracho        | Higashi-ginza, Nihombashi    |
    | Nihombashi       | Takaracho, Ningyocho         |
    | Ningyocho        | Nihombashi, Bakuro-yokoyama  |
    | Bakuro-yokoyama  | Ningyocho, Asakusabahi       |
    | Asakusabashi     | Bakuro-yokoyama, Kuramae     |
    | Kuramae          | Asakusabashi, Asakusa        |
    | Asakusa          | Kuramae, Honjo-azamubashi    |
    | Honjo-azumabashi | Asakusa, Oshiage             |
    | Oshiage          | Honjo-azumbashi              |
    +------------------+------------------------------+

=head1 NOTE

=over 2

=item * The station "Mita" is also part of Mita Line.

=item * The station "Diamon" is also part of Oedo Line.

=item * The station "Higashi-ginza" is also part of Hibiya Line.

=item * The station "Nihombashi" is also part of Ginza Line | Tōzai Line.

=item * The station "Ningyocho"  is also part of Hibiya Line.

=item * The station "Bakuro-yokoyama" is also part of Shinjuku Line.

=item * The station "Kuramae" is also aprt of Oedo Line.

=item * The station "Asakusa" is also part of Ginza Line.

=item * The station "Oshiage" is also part of Hanzōmon Line.

=back

=head1 AUTHOR

Mohammad S Anwar, C<< <mohammad.anwar at yahoo.com> >>

=head1 REPOSITORY

L<https://github.com/Manwar/Map-Tube-Tokyo>

=head1 BUGS

Please  report any bugs/feature requests to C<bug-map-tube-tokyo at rt.cpan.org>,
or through the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Map-Tube-Tokyo>.
I will be notified, and then you'll automatically be notified of progress on your
bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Map::Tube::Tokyo::Line::Asakusa

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Map-Tube-Tokyo>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Map-Tube-Tokyo>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Map-Tube-Tokyo>

=item * Search CPAN

L<http://search.cpan.org/dist/Map-Tube-Tokyo/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2014 - 2015 Mohammad S Anwar.

This  program  is  free software; you can redistribute it and/or modify it under
the  terms  of the the Artistic License (2.0). You may obtain a copy of the full
license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any  use,  modification, and distribution of the Standard or Modified Versions is
governed by this Artistic License.By using, modifying or distributing the Package,
you accept this license. Do not use, modify, or distribute the Package, if you do
not accept this license.

If your Modified Version has been derived from a Modified Version made by someone
other than you,you are nevertheless required to ensure that your Modified Version
 complies with the requirements of this license.

This  license  does  not grant you the right to use any trademark,  service mark,
tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge patent license
to make,  have made, use,  offer to sell, sell, import and otherwise transfer the
Package with respect to any patent claims licensable by the Copyright Holder that
are  necessarily  infringed  by  the  Package. If you institute patent litigation
(including  a  cross-claim  or  counterclaim) against any party alleging that the
Package constitutes direct or contributory patent infringement,then this Artistic
License to you shall terminate on the date that such litigation is filed.

Disclaimer  of  Warranty:  THE  PACKAGE  IS  PROVIDED BY THE COPYRIGHT HOLDER AND
CONTRIBUTORS  "AS IS'  AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED
WARRANTIES    OF   MERCHANTABILITY,   FITNESS   FOR   A   PARTICULAR  PURPOSE, OR
NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS
REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL,  OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE
OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut

1; # End of Map::Tube::Tokyo::Line::Asakusa
