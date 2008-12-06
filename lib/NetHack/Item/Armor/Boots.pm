#!/usr/bin/env perl
package NetHack::Item::Armor::Boots;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'boots';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

