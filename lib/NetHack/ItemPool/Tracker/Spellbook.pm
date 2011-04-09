package NetHack::ItemPool::Tracker::Spellbook;
BEGIN {
  $NetHack::ItemPool::Tracker::Spellbook::VERSION = '0.13';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'spellbook';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

