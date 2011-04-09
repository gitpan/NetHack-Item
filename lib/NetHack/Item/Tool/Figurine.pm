package NetHack::Item::Tool::Figurine;
BEGIN {
  $NetHack::Item::Tool::Figurine::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item::Tool';

use constant subtype => 'figurine';

__PACKAGE__->meta->install_spoilers(qw/monster/);

__PACKAGE__->meta->make_immutable;
no Moose;

1;

