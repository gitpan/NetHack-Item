#!/usr/bin/env perl
package NetHack::Item::Meta::Trait::IncorporatesUndef;
our $VERSION = '0.04';

use Moose::Role;

package Moose::Meta::Attribute::Custom::Trait::IncorporatesUndef;
our $VERSION = '0.04';

sub register_implementation { 'NetHack::Item::Meta::Trait::IncorporatesUndef' }

1;

