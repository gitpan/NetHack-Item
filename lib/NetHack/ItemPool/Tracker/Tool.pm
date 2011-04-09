package NetHack::ItemPool::Tracker::Tool;
BEGIN {
  $NetHack::ItemPool::Tracker::Tool::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'tool';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

