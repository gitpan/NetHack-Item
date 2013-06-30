package NetHack::ItemPool::Tracker::Spellbook;
{
  $NetHack::ItemPool::Tracker::Spellbook::VERSION = '0.16';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'spellbook';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

