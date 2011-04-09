package NetHack::ItemPool::Tracker::Amulet;
BEGIN {
  $NetHack::ItemPool::Tracker::Amulet::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'amulet';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

