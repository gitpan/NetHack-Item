package NetHack::ItemPool::Tracker::Scroll;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'scroll';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

