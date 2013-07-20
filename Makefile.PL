
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "parse and interact with a NetHack item",
  "AUTHOR" => "Shawn M Moore <sartak\@bestpractical.com>, Jesse Luehrs <doy at tozt dot net>, Sean Kelly <cpan\@katron.org>, Stefan O'Rear <stefanor\@cox.net>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "NetHack-Item",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "NetHack::Item",
  "PREREQ_PM" => {
    "Module::Pluggable" => "3.8",
    "Moose" => "0.90",
    "MooseX::Role::Parameterized" => "0.05",
    "NetHack::Monster::Spoiler" => "0.02",
    "Set::Object" => "1.00",
    "Test::Fatal" => "0.007",
    "Test::More" => "0.88"
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.20",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



