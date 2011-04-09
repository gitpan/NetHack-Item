package NetHack::ItemPool::Tracker::Gem;
BEGIN {
  $NetHack::ItemPool::Tracker::Gem::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'gem';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

