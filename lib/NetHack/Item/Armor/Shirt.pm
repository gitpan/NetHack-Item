package NetHack::Item::Armor::Shirt;
our $VERSION = '0.10';

use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'shirt';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

