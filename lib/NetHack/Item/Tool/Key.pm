package NetHack::Item::Tool::Key;
our $VERSION = '0.09';

use Moose;
extends 'NetHack::Item::Tool';

use constant subtype => 'key';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

