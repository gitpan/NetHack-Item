package NetHack::Item::Tool::Candelabrum;
BEGIN {
  $NetHack::Item::Tool::Candelabrum::VERSION = '0.13';
}
use Moose;
extends 'NetHack::Item::Tool::Light';

use constant subtype => 'candelabrum';

has candles_attached => (
    is      => 'rw',
    isa     => 'Int',
    default => 0,
);

with 'NetHack::Item::Role::IncorporatesStats' => {
    attribute => 'candles_attached',
    stat      => 'candles',
};

__PACKAGE__->meta->make_immutable;
no Moose;

1;

