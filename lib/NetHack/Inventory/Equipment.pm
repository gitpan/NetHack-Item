#!/usr/bin/env perl
package NetHack::Inventory::Equipment;
our $VERSION = '0.06';

use Moose;
with 'NetHack::ItemPool::Role::HasPool';

sub weapon_slots { qw/weapon offhand quiver/ }
sub armor_slots  { qw/helmet gloves boots bodyarmor cloak shirt shield/ }
sub accessory_slots { qw/left_ring right_ring amulet/ }

sub slots {
    my $self = shift;
    return ($self->weapon_slots, $self->armor_slots, $self->accessory_slots)
}

for my $slot (__PACKAGE__->slots) {
    has $slot => (
        is        => 'rw',
        isa       => 'NetHack::Item',
        clearer   => "clear_$slot",
        predicate => "has_$slot",
    );
}

has '+pool' => (
    required => 1,
);

my %weapon_slots = (
    weapon  => 'is_wielded',
    offhand => 'is_offhand',
    quiver  => 'is_quivered',
);

sub update {
    my $self = shift;
    my $item = shift;

    $self->_update_weapon($item);
    $self->_update_ring($item);
    $self->_update_armor($item);
}

sub _update_ring {
    my $self = shift;
    my $item = shift;

    if ($item->type eq 'ring' && (my $hand = $item->hand)) {
        my $slot = "${hand}_ring";

        if ($item != ($self->$slot || 0)) {
            my $clearer = "clear_$slot";
            $self->$clearer;
            $self->$slot($item);
        }
    }
}

sub _update_weapon {
    my $self = shift;
    my $item = shift;

    for my $slot (keys %weapon_slots) {
        my $check = $weapon_slots{$slot};
        next unless $item->$check;
        next if $self->$slot && $self->$slot == $item;

        my $clearer = "clear_$slot";
        $self->$clearer;
        $self->$slot($item);
    }
}

sub _update_armor {
    my $self = shift;
    my $item = shift;

    return unless $item->does('NetHack::Item::Role::Wearable');

    if ($item->is_worn) {
        my $slot = $item->type eq 'armor'
                 ? $item->subtype
                 : $item->type;

        if ($item != ($self->$slot || 0)) {
            my $clearer = "clear_$slot";
            $self->$clearer;
            $self->$slot($item);
        }
    }
}

sub remove {
    my $self = shift;
    my $item = shift;

    for my $slot (__PACKAGE__->slots) {
        my $incumbent = $self->$slot;

        next unless $incumbent
                 && $incumbent->slot eq $item->slot;

        my $clearer = "clear_$slot";
        $self->$clearer;
    }
}

for my $slot (keys %weapon_slots) {
    my $accessor = $weapon_slots{$slot};

    before "clear_$slot" => sub {
        my $self = shift;
        my $item = $self->$slot or return;
        $item->$accessor(0) if $item->$accessor;
    };
};

for my $slot (__PACKAGE__->armor_slots) {
    before "clear_$slot" => sub {
        my $self = shift;
        my $item = $self->$slot or return;

        $item->is_worn(0) if $item->is_worn;
    };
}

for my $hand (qw/left_ring right_ring/) {
    before "clear_$hand" => sub {
        my $self = shift;
        my $item = $self->$hand or return;
        $item->hand(undef) if $item->hand;
    };
}

__PACKAGE__->meta->make_immutable;
no Moose;

1;

__END__

=head1 NAME

NetHack::Inventory::Equipment - the player's equipment

=head1 VERSION

version 0.06

=head1 SYNOPSIS

    use NetHack::ItemPool;
    my $pool = NetHack::ItemPool->new;
    my $excalibur = $pool->new_item("the +3 Excalibur (weapon in hand)");
    is($pool->inventory->weapon, $excalibur);

    my $grayswandir = $pool->new_item("the +7 Grayswandir (weapon in hand)");
    is($pool->inventory->weapon, $grayswandir);

=head1 DESCRIPTION

=cut