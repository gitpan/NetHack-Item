package NetHack::Item::Scroll;
BEGIN {
  $NetHack::Item::Scroll::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item';

use constant type => "scroll";

__PACKAGE__->meta->install_spoilers('ink');

__PACKAGE__->meta->make_immutable;
no Moose;

1;

