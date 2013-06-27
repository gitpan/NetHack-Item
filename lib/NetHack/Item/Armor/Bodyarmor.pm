package NetHack::Item::Armor::Bodyarmor;
{
  $NetHack::Item::Armor::Bodyarmor::VERSION = '0.14';
}
use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'bodyarmor';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

