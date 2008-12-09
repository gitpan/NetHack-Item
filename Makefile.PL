
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'NetHack-Item',
  NAME      => 'NetHack::Item',
  AUTHOR    => 'Shawn\ M\ Moore\ \<sartak\@bestpractical\.com\>',
  ABSTRACT  => 'parse and interact with a NetHack item',
  VERSION   => '0.05',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Module::Pluggable" => '3.8',
    "Test::More" => '0.86',
    "Test::Exception" => '0.27',
    "MooseX::AttributeHelpers" => '0.12',
    "Set::Object" => '1.00',
    "Log::Dispatch" => '2.22',
    "Net::Twitter" => '1.17',
    "Moose" => '0.54',
  },
);
