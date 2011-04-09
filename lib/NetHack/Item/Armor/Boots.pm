package NetHack::Item::Armor::Boots;
BEGIN {
  $NetHack::Item::Armor::Boots::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'boots';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

