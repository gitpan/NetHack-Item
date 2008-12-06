package NetHack::ItemPool::Tracker::Ring;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'ring';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

