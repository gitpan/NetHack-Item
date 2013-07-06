package NetHack::Item::Spoiler::Gold;
{
  $NetHack::Item::Spoiler::Gold::VERSION = '0.19';
}
use strict;
use warnings;
use base 'NetHack::Item::Spoiler';

use constant type => 'gold';

sub _list {
    return {
        'gold piece' => {
            price  => 1,
            weight => 0.01,
            glyph  => '$',
            plural => 'gold pieces',
            stackable  => 1,
            material => 'gold',
        },
    };
}

1;

