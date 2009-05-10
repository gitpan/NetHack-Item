package NetHack::ItemPool::Tracker::Weapon;
our $VERSION = '0.10';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'weapon';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

