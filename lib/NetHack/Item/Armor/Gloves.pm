package NetHack::Item::Armor::Gloves;
BEGIN {
  $NetHack::Item::Armor::Gloves::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'gloves';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

