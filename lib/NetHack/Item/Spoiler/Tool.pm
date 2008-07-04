#!/usr/bin/env perl
package NetHack::Item::Spoiler::Tool;
use strict;
use warnings;
use base 'NetHack::Item::Spoiler';

use Memoize;
memoize 'list';

sub list {
    my $tools = {
        'Bell of Opening' => {
            artifact => 1,
            price => 5000,
            weight => 10,
            charge => 3,
            appearance => 'silver bell',
        },
        'Candelabrum of Invocation' => {
            artifact => 1,
            price => 5000,
            weight => 10,
            charge => '',
            appearance => 'candelabrum',
        },
        'Eyes of the Overworld' => {
            artifact => 1,
            price => 80,
            weight => 3,
            charge => '',
            base => 'lenses',
        },
        'Magic Mirror of Merlin' => {
            artifact => 1,
            price => 10,
            weight => 13,
            charge => '',
            base => 'mirror',
        },
        'Master Key of Thievery' => {
            artifact => 1,
            price => 10,
            weight => 3,
            charge => '',
            base => 'skeleton key',
        },
        'Orb of Detection' => {
            artifact => 1,
            price => 60,
            weight => 150,
            charge => 5,
            base => 'crystal ball',
        },
        'Orb of Fate' => {
            artifact => 1,
            price => 60,
            weight => 150,
            charge => 5,
            base => 'crystal ball',
        },
        'Platinum Yendorian Express Card' => {
            artifact => 1,
            price => 10,
            weight => 1,
            charge => '',
            base => 'credit card',
        },

        'large box' => {
            price => 8,
            weight => 350,
            charge => '',
        },
        'chest' => {
            price => 16,
            weight => 600, charge => '',
        },
        'ice box' => {
            price => 42,
            weight => 900,
            charge => '',
        },
        'sack' => {
            price => 2,
            weight => 15,
            charge => '',
            appearance => 'bag',
        },
        'bag of holding' => {
            price => 100,
            weight => 15,
            charge => '',
            appearance => 'bag',
        },
        'bag of tricks' => {
            price => 100,
            weight => 15,
            charge => 20,
            appearance => 'bag',
        },
        'oilskin sack' => {
            price => 100,
            weight => 15,
            charge => '',
            appearance => 'bag',
        },

        'credit card' => {
            price => 10,
            weight => 1,
            charge => '',
        },
        'lock pick' => {
            price => 20,
            weight => 4,
            charge => '',
        },
        'skeleton key' => {
            price => 10,
            weight => 3,
            charge => '',
            appearance => 'key',
        },

        'tallow candle' => {
            price => 10,
            weight => 2,
            charge => '',
            appearance => 'candle',
            plural => 'tallow candles',
        },
        'wax candle' => {
            price => 20,
            weight => 2,
            charge => '',
            appearance => 'candle',
            plural => 'wax candles',
        },
        'brass lantern' => {
            price => 12,
            weight => 30,
            charge => 1499,
        },
        'oil lamp' => {
            price => 10,
            weight => 20,
            charge => 1499,
            appearance => 'lamp',
        },
        'magic lamp' => {
            price => 50,
            weight => 20,
            charge => '',
            appearance => 'lamp',
        },

        'tin whistle' => {
            price => 10,
            weight => 3,
            charge => '',
            appearance => 'whistle',
        },
        'magic whistle' => {
            price => 10,
            weight => 3,
            charge => '',
            appearance => 'whistle',
        },
        'bugle' => {
            price => 15,
            weight => 10,
            charge => '',
        },
        'wooden flute' => {
            price => 12,
            weight => 5,
            charge => '',
            appearance => 'flute',
        },
        'magic flute' => {
            price => 36,
            weight => 5,
            charge => 8,
            appearance => 'flute',
        },
        'tooled horn' => {
            price => 15,
            weight => 18,
            charge => '',
            appearance => 'horn',
        },
        'frost horn' => {
            price => 50,
            weight => 18,
            charge => 8,
            appearance => 'horn',
        },
        'fire horn' => {
            price => 50,
            weight => 18,
            charge => 8,
            appearance => 'horn',
        },
        'horn of plenty' => {
            price => 50,
            weight => 18,
            charge => 20,
            appearance => 'horn',
        },
        'leather drum' => {
            price => 25,
            weight => 25,
            charge => '',
            appearance => 'drum',
        },
        'drum of earthquake' => {
            price => 25,
            weight => 25,
            charge => 8,
            appearance => 'drum',
        },
        'wooden harp' => {
            price => 50,
            weight => 30,
            charge => '',
            appearance => 'harp',
        },
        'magic harp' => {
            price => 50,
            weight => 30,
            charge => 8,
            appearance => 'harp',
        },
        'bell' => {
            price => 50,
            weight => 30,
            charge => '',
        },

        'beartrap' => {
            price => 60,
            weight => 200,
            charge => '',
        },
        'land mine' => {
            price => 180,
            weight => 300,
            charge => '',
            appearance => 'land mine',
        },

        'pick-axe' => {
            price => 50,
            weight => 100,
            charge => '',
            weaptool => 1,
        },
        'grappling hook' => {
            price => 50,
            weight => 30,
            charge => '',
            weaptool => 1,
            appearance => 'iron hook',
        },
        'unicorn horn' => {
            price => 100,
            weight => 20,
            charge => '',
            weaptool => 1,
        },

        'expensive camera' => {
            price => 200,
            weight => 12,
            charge => 99,
        },
        'mirror' => {
            price => 10,
            weight => 13,
            charge => '',
            appearance => 'looking glass',
        },
        'crystal ball' => {
            price => 60,
            weight => 150,
            charge => 5,
            appearance => 'glass orb',
        },
        'lenses' => {
            price => 80,
            weight => 3,
            charge => '',
        },
        'blindfold' => {
            price => 20,
            weight => 2,
            charge => '',
        },
        'towel' => {
            price => 50,
            weight => 2,
            charge => '',
        },
        'saddle' => {
            price => 150,
            weight => 200,
            charge => '',
        },
        'leash' => {
            price => 20,
            weight => 12,
            charge => '',
        },
        'stethoscope' => {
            price => 75,
            weight => 4,
            charge => '',
        },
        'tinning kit' => {
            price => 30,
            weight => 100,
            charge => 99,
        },
        'tin opener' => {
            price => 30,
            weight => 4,
            charge => '',
        },
        'can of grease' => {
            price => 20,
            weight => 15,
            charge => 25,
        },
        'figurine' => {
            price => 80,
            weight => 50,
            charge => '',
        },
        'magic marker' => {
            price => 50,
            weight => 2,
            charge => 99,
        },
    };

    # tag each tool with its name and appearance
    for my $name (keys %$tools) {
        my $stats = $tools->{$name};
        $stats->{name}       = $name;
        $stats->{type}       = 'tool';
        $stats->{appearance} = $name
            unless $stats->{appearance} || $stats->{appearances};
    }

    return $tools;
}

sub extra_plurals {
    return {
        candle => 'candles',
    };
}

1;


