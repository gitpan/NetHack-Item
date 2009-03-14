package NetHack::Item::Meta::Trait::IncorporatesUndef;
our $VERSION = '0.08';

use Moose::Role;

package Moose::Meta::Attribute::Custom::Trait::IncorporatesUndef;
our $VERSION = '0.08';

sub register_implementation { 'NetHack::Item::Meta::Trait::IncorporatesUndef' }

1;

