
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'NetHack-Item',
  NAME      => 'NetHack::Item',
  AUTHOR    => 'Shawn\ M\ Moore\ \<sartak\@bestpractical\.com\>\,\ Jesse\ Luehrs\ \<doy\@tozt\.net\>\,\ Sean\ Kelly\ \<cpan\@katron\.org\>\,\ Stefan\ O\'Rear\ \<stefanor\@cox\.net\>',
  ABSTRACT  => 'parse and interact with a NetHack item',
  VERSION   => '0.09',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Module::Pluggable" => '3.8',
    "NetHack::Monster::Spoiler" => '0.02',
    "Test::More" => '0.86',
    "Test::Exception" => '0.27',
    "MooseX::AttributeHelpers" => '0.12',
    "Set::Object" => '1.00',
    "Moose" => '0.54',
  },
);
