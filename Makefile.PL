
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'parse and interact with a NetHack item',
  'AUTHOR' => 'Shawn M Moore <sartak@bestpractical.com>, Jesse Luehrs <doy at tozt dot net>, Sean Kelly <cpan@katron.org>, Stefan O\'Rear <stefanor@cox.net>',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'NetHack-Item',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'NetHack::Item',
  'PREREQ_PM' => {
    'Module::Pluggable' => '3.8',
    'Moose' => '0.90',
    'MooseX::Role::Parameterized' => '0.05',
    'NetHack::Monster::Spoiler' => '0.02',
    'Set::Object' => '1.00',
    'Test::Exception' => '0.27',
    'Test::More' => '0.86'
  },
  'VERSION' => '0.13',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


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



