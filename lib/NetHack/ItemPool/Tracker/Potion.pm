package NetHack::ItemPool::Tracker::Potion;
BEGIN {
  $NetHack::ItemPool::Tracker::Potion::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'potion';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

