package NetHack::Item::Gold;
{
  $NetHack::Item::Gold::VERSION = '0.20';
}
use Moose;
extends 'NetHack::Item';

use constant type => "gold";

__PACKAGE__->meta->make_immutable;
no Moose;

1;

