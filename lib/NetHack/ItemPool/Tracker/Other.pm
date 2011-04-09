package NetHack::ItemPool::Tracker::Other;
BEGIN {
  $NetHack::ItemPool::Tracker::Other::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'other';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

