package NetHack::ItemPool::Tracker::Other;
our $VERSION = '0.08';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'other';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

