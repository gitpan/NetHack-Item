package NetHack::Item::Armor::Cloak;
{
  $NetHack::Item::Armor::Cloak::VERSION = '0.17';
}
use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'cloak';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

