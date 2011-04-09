package NetHack::ItemPool::Tracker::Scroll;
BEGIN {
  $NetHack::ItemPool::Tracker::Scroll::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'scroll';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

