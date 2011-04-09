package NetHack::Item::Tool::Key;
BEGIN {
  $NetHack::Item::Tool::Key::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item::Tool';

use constant subtype => 'key';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

