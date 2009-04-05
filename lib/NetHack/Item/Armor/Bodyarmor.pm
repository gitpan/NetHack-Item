package NetHack::Item::Armor::Bodyarmor;
our $VERSION = '0.09';

use Moose;
extends 'NetHack::Item::Armor';

use constant subtype => 'bodyarmor';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

