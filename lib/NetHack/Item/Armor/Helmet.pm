package NetHack::Item::Armor::Helmet;
our $VERSION = '0.10';

use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'helmet';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

