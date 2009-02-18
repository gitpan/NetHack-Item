package NetHack::ItemPool::Tracker::Potion;
our $VERSION = '0.06';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'potion';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

