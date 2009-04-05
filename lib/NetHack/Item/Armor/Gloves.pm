package NetHack::Item::Armor::Gloves;
our $VERSION = '0.09';

use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'gloves';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

