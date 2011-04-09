package NetHack::ItemPool::Tracker::Ring;
BEGIN {
  $NetHack::ItemPool::Tracker::Ring::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'ring';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

