package NetHack::ItemPool::Tracker::Amulet;
our $VERSION = '0.09';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'amulet';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

