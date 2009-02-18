package NetHack::ItemPool::Tracker::Gem;
our $VERSION = '0.06';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'gem';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

