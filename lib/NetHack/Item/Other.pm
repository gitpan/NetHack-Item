package NetHack::Item::Other;
{
  $NetHack::Item::Other::VERSION = '0.17';
}
use Moose;
extends 'NetHack::Item';

use constant type => "other";

has is_chained_to_you => (
    traits => [qw/IncorporatesUndef/],
    is     => 'rw',
    isa    => 'Bool',
);

with 'NetHack::Item::Role::IncorporatesStats' => {
    attribute => 'is_chained_to_you',
    stat      => 'chained',
};

__PACKAGE__->meta->install_spoilers(qw/monster/);

__PACKAGE__->meta->make_immutable;
no Moose;

1;

