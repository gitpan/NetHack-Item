package NetHack::Item::Armor::Cloak;
our $VERSION = '0.09';

use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'cloak';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

