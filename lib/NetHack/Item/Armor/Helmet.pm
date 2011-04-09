package NetHack::Item::Armor::Helmet;
BEGIN {
  $NetHack::Item::Armor::Helmet::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'helmet';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

