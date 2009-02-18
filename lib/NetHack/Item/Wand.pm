#!/usr/bin/env perl
package NetHack::Item::Wand;
our $VERSION = '0.06';

use Moose;
extends 'NetHack::Item';
with 'NetHack::Item::Role::ChargeBUC';
with 'NetHack::Item::Role::Damageable';

use constant type => "wand";

__PACKAGE__->meta->install_spoilers(qw/maxcharges zaptype/);

__PACKAGE__->meta->make_immutable;
no Moose;

1;

