package NetHack::ItemPool::Tracker::Spellbook;
our $VERSION = '0.05';

use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'spellbook';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

