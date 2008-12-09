#!/usr/bin/env perl
package NetHack::Item::Food::Corpse;
our $VERSION = '0.05';

use Moose;
extends 'NetHack::Item::Food';

use constant subtype => 'corpse';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

