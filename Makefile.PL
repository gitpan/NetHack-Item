
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'NetHack-Item',
  NAME      => 'NetHack::Item',
  AUTHOR    => 'Shawn\ M\ Moore\ \<sartak\@bestpractical\.com\>\,\ Jesse\ Luehrs\ \<doy\ at\ tozt\ dot\ net\>\,\ Sean\ Kelly\ \<cpan\@katron\.org\>\,\ Stefan\ O\'Rear\ \<stefanor\@cox\.net\>',
  ABSTRACT  => 'parse\ and\ interact\ with\ a\ NetHack\ item',
  VERSION   => '0.12',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "NetHack::Monster::Spoiler" => '0.02',
    "Module::Pluggable" => '3.8',
    "Test::More" => '0.86',
    "Test::Exception" => '0.2k',
    "Set::Object" => '1.00',
    "MooseX::Role::Parameterized" => '0.05',
    "Moose" => '0.90',
  },
  test => {TESTS => 't/*.t'}
);

