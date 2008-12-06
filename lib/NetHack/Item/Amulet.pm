#!/usr/bin/env perl
package NetHack::Item::Amulet;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::Item';
with 'NetHack::Item::Role::Wearable';

use constant type => 'amulet';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

