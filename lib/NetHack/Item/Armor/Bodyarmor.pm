package NetHack::Item::Armor::Bodyarmor;
BEGIN {
  $NetHack::Item::Armor::Bodyarmor::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'bodyarmor';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

