package NetHack::Item::Gem;
BEGIN {
  $NetHack::Item::Gem::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item';

use constant type => "gem";

__PACKAGE__->meta->install_spoilers('hardness');
sub softness { shift->hardness(@_) }

__PACKAGE__->meta->make_immutable;
no Moose;

1;

