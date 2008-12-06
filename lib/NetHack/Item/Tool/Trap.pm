#!/usr/bin/env perl
package NetHack::Item::Tool::Trap;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::Item::Tool';

use constant subtype => 'trap';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

