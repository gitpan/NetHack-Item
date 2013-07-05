package NetHack::Item::Armor::Shield;
{
  $NetHack::Item::Armor::Shield::VERSION = '0.17';
}
use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'shield';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

