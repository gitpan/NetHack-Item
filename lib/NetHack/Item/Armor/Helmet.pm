package NetHack::Item::Armor::Helmet;
{
  $NetHack::Item::Armor::Helmet::VERSION = '0.14';
}
use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'helmet';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

