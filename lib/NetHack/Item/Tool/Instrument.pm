package NetHack::Item::Tool::Instrument;
BEGIN {
  $NetHack::Item::Tool::Instrument::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item::Tool';

use constant subtype => 'instrument';

__PACKAGE__->meta->install_spoilers('tonal');

__PACKAGE__->meta->make_immutable;
no Moose;

1;

