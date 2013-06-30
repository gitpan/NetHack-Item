package NetHack::ItemPool::Tracker::Weapon;
{
  $NetHack::ItemPool::Tracker::Weapon::VERSION = '0.16';
}
use Moose;
extends 'NetHack::ItemPool::Tracker';

use constant type => 'weapon';


__PACKAGE__->meta->make_immutable;
no Moose;

1;

