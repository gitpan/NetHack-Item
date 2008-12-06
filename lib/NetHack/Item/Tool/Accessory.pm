#!/usr/bin/env perl
package NetHack::Item::Tool::Accessory;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::Item::Tool';
with 'NetHack::Item::Role::Wearable';

use constant subtype => 'accessory';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

