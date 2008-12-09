#!/usr/bin/env perl
package NetHack::Item::Scroll;
our $VERSION = '0.05';

use Moose;
extends 'NetHack::Item';

use constant type => "scroll";

__PACKAGE__->meta->install_spoilers('ink');

__PACKAGE__->meta->make_immutable;
no Moose;

1;

