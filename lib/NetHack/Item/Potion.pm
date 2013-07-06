package NetHack::Item::Potion;
{
  $NetHack::Item::Potion::VERSION = '0.19';
}
use Moose;
extends 'NetHack::Item';
with 'NetHack::Item::Role::Lightable';

use constant type => "potion";

has is_diluted => (
    traits  => [qw/IncorporatesUndef/],
    is      => 'rw',
    isa     => 'Bool',
    default => 0,
);

with 'NetHack::Item::Role::IncorporatesStats' => {
    attribute => 'is_diluted',
    stat      => 'diluted',
};

__PACKAGE__->meta->make_immutable;
no Moose;

1;

