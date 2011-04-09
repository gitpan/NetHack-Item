package NetHack::ItemPool::Tracker::Food;
BEGIN {
  $NetHack::ItemPool::Tracker::Food::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'food';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

