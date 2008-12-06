#!/usr/bin/env perl
package NetHack::Item::Armor;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::Item';
with 'NetHack::Item::Role::Wearable';
with 'NetHack::Item::Role::Enchantable';
with 'NetHack::Item::Role::Damageable';

use constant subtypes => qw(helmet shirt bodyarmor cloak gloves shield boots);
use constant type => "armor";

sub ac {
    my $self = shift;
    my $base = $self->collapse_spoiler_value('ac');
    return $base unless defined($base) && $self->enchantment_known;

    my $enchantment = $self->enchantment;
    return $base + $enchantment;
}

__PACKAGE__->meta->install_spoilers('mc');

__PACKAGE__->meta->make_immutable;
no Moose;

1;

