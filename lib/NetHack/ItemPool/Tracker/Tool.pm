package NetHack::ItemPool::Tracker::Tool;
our $VERSION = '0.05';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'tool';


__PACKAGE__->meta->make_immutable;
no Moose;

1;
