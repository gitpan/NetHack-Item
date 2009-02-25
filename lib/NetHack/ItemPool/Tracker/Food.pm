package NetHack::ItemPool::Tracker::Food;
our $VERSION = '0.07';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'food';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

