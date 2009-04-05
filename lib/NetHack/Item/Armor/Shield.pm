package NetHack::Item::Armor::Shield;
our $VERSION = '0.09';

use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'shield';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

