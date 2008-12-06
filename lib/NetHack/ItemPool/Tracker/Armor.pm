package NetHack::ItemPool::Tracker::Armor;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'armor';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

