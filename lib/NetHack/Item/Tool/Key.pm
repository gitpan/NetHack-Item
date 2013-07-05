package NetHack::Item::Tool::Key;
{
  $NetHack::Item::Tool::Key::VERSION = '0.18';
}
use Moose;
extends 'NetHack::Item::Tool';

use constant subtype => 'key';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

