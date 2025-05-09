#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share dist => 'share';

WriteMakefile(
    NAME               => 'Map::Tube::Tokyo',
    AUTHOR             => q{Mohammad Sajid Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/Map/Tube/Tokyo.pm',
    ABSTRACT_FROM      => 'lib/Map/Tube/Tokyo.pm',
    LICENSE            => 'artistic_2',
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker'     => 0,
        'File::ShareDir::Install' => '0.13',
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moo'                  => '2.000000',
        'namespace::autoclean' => '0.28',
        'File::ShareDir'       => '1.114',
        'Map::Tube'            => '4.07',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Map-Tube-Tokyo-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        provides    => {
            'Map::Tube::Tokyo'                => { file => 'lib/Map/Tube/Tokyo.pm',              version => '0.63' },
            'Map::Tube::Tokyo::Line::Asakusa' => { file => 'lib/Map/Tube/Tokyo/Line/Asakusa.pm', version => '0.63' },
            'Map::Tube::Tokyo::Line::Chiyoda' => { file => 'lib/Map/Tube/Tokyo/Line/Chiyoda.pm', version => '0.63' },
        },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/manwar/Map-Tube-Tokyo.git',
                web  => 'https://github.com/manwar/Map-Tube-Tokyo',
            },
        }})
     : ()
    ),
);

package MY;
use File::ShareDir::Install 'postamble';
