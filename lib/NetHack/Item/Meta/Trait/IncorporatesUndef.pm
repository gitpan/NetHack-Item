#!/usr/bin/env perl
package NetHack::Item::Meta::Trait::IncorporatesUndef;
our $VERSION = '0.06';

use Moose::Role;

package Moose::Meta::Attribute::Custom::Trait::IncorporatesUndef;
our $VERSION = '0.06';

sub register_implementation { 'NetHack::Item::Meta::Trait::IncorporatesUndef' }

1;

