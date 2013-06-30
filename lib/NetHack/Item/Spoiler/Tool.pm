package NetHack::Item::Spoiler::Tool;
{
  $NetHack::Item::Spoiler::Tool::VERSION = '0.15';
}
use strict;
use warnings;
use base 'NetHack::Item::Spoiler';
use NetHack::Monster::Spoiler;

use constant type => 'tool';

sub _list {
    my $tools = {
        'Bell of Opening' => {
            artifact => 1,
            price => 5000,
            weight => 10,
            charge => 3,
            fullname => 'The Bell of Opening',
            appearance => 'silver bell',
            subtype => 'instrument',
            material => 'silver',
            tonal => 0,
        },
        'Candelabrum of Invocation' => {
            artifact => 1,
            price => 5000,
            weight => 10,
            charge => 0,
            fullname => 'The Candelabrum of Invocation',
            appearance => 'candelabrum',
            subtype => 'candelabrum',
            material => 'gold',
        },

        'Eyes of the Overworld' => {
            artifact => 1,
            base => 'lenses',
            price => 80,
            weight => 3,
            charge => 0,
            fullname => 'The Eyes of the Overworld',
            subtype => 'accessory',
            material => 'glass',
        },
        'Magic Mirror of Merlin' => {
            artifact => 1,
            base => 'mirror',
            price => 10,
            weight => 13,
            charge => 0,
            fullname => 'The Magic Mirror of Merlin',
            material => 'glass',
        },
        'Master Key of Thievery' => {
            artifact => 1,
            base => 'skeleton key',
            price => 10,
            weight => 3,
            charge => 0,
            fullname => 'The Master Key of Thievery',
            subtype => 'key',
            material => 'iron',
        },
        'Orb of Detection' => {
            artifact => 1,
            base => 'crystal ball',
            price => 60,
            weight => 150,
            charge => 5,
            fullname => 'The Orb of Detection',
            material => 'glass',
        },
        'Orb of Fate' => {
            artifact => 1,
            base => 'crystal ball',
            price => 60,
            weight => 150,
            charge => 5,
            fullname => 'The Orb of Fate',
            material => 'glass',
        },
        'Platinum Yendorian Express Card' => {
            artifact => 1,
            base => 'credit card',
            price => 10,
            weight => 1,
            charge => 0,
            fullname => 'The Platinum Yendorian Express Card',
            subtype => 'key',
            material => 'plastic',
        },

        'large box' => {
            price => 8,
            weight => 350,
            charge => 0,
            subtype => 'container',
            material => 'wood',
        },
        'chest' => {
            price => 16,
            weight => 600,
            charge => 0,
            subtype => 'container',
            material => 'wood',
        },
        'ice box' => {
            price => 42,
            weight => 900,
            charge => 0,
            subtype => 'container',
            material => 'plastic',
        },
        'sack' => {
            price => 2,
            weight => 15,
            charge => 0,
            appearance => 'bag',
            subtype => 'container',
            material => 'cloth',
        },
        'bag of holding' => {
            price => 100,
            weight => 15,
            charge => 0,
            appearance => 'bag',
            subtype => 'container',
            material => 'cloth',
        },
        'bag of tricks' => {
            price => 100,
            weight => 15,
            charge => 20,
            appearance => 'bag',
            material => 'cloth',
            # NOT A CONTAINER!!
        },
        'oilskin sack' => {
            price => 100,
            weight => 15,
            charge => 0,
            appearance => 'bag',
            subtype => 'container',
            material => 'cloth',
        },

        'credit card' => {
            price => 10,
            weight => 1,
            charge => 0,
            subtype => 'key',
            material => 'plastic',
        },
        'lock pick' => {
            price => 20,
            weight => 4,
            charge => 0,
            subtype => 'key',
            material => 'iron',
        },
        'skeleton key' => {
            price => 10,
            weight => 3,
            charge => 0,
            appearance => 'key',
            subtype => 'key',
            material => 'iron',
        },

        'tallow candle' => {
            price => 10,
            weight => 2,
            charge => 0,
            appearance => 'candle',
            plural => 'tallow candles',
            subtype => 'light',
            stackable => 1,
            material => 'wax',
        },
        'wax candle' => {
            price => 20,
            weight => 2,
            charge => 0,
            appearance => 'candle',
            plural => 'wax candles',
            subtype => 'light',
            stackable => 1,
            material => 'wax',
        },
        'brass lantern' => {
            price => 12,
            weight => 30,
            charge => 1499,
            subtype => 'light',
            material => 'copper',
        },
        'oil lamp' => {
            price => 10,
            weight => 20,
            charge => 1499,
            appearance => 'lamp',
            subtype => 'light',
            material => 'copper',
        },
        'magic lamp' => {
            price => 50,
            weight => 20,
            charge => 0,
            appearance => 'lamp',
            subtype => 'light',
            material => 'copper',
        },

        'tin whistle' => {
            price => 10,
            weight => 3,
            charge => 0,
            appearance => 'whistle',
            subtype => 'instrument',
            tonal => 0,
            material => 'metal',
        },
        'magic whistle' => {
            price => 10,
            weight => 3,
            charge => 0,
            appearance => 'whistle',
            subtype => 'instrument',
            tonal => 0,
            material => 'metal',
        },
        'bugle' => {
            price => 15,
            weight => 10,
            charge => 0,
            subtype => 'instrument',
            tonal => 1,
            material => 'copper',
        },
        'wooden flute' => {
            price => 12,
            weight => 5,
            charge => 0,
            appearance => 'flute',
            subtype => 'instrument',
            tonal => 1,
            material => 'wood',
        },
        'magic flute' => {
            price => 36,
            weight => 5,
            charge => 8,
            appearance => 'flute',
            subtype => 'instrument',
            tonal => 1,
            material => 'wood',
        },
        'tooled horn' => {
            price => 15,
            weight => 18,
            charge => 0,
            appearance => 'horn',
            subtype => 'instrument',
            tonal => 1,
            material => 'bone',
        },
        'frost horn' => {
            price => 50,
            weight => 18,
            charge => 8,
            appearance => 'horn',
            subtype => 'instrument',
            tonal => 1,
            material => 'bone',
        },
        'fire horn' => {
            price => 50,
            weight => 18,
            charge => 8,
            appearance => 'horn',
            subtype => 'instrument',
            tonal => 1,
            material => 'bone',
        },
        'horn of plenty' => {
            price => 50,
            weight => 18,
            charge => 20,
            appearance => 'horn',
            subtype => 'instrument',
            tonal => 0,
            material => 'bone',
        },
        'leather drum' => {
            price => 25,
            weight => 25,
            charge => 0,
            appearance => 'drum',
            subtype => 'instrument',
            tonal => 0,
            material => 'leather',
        },
        'drum of earthquake' => {
            price => 25,
            weight => 25,
            charge => 8,
            appearance => 'drum',
            subtype => 'instrument',
            tonal => 0,
            material => 'leather',
        },
        'wooden harp' => {
            price => 50,
            weight => 30,
            charge => 0,
            appearance => 'harp',
            subtype => 'instrument',
            tonal => 1,
            material => 'wood',
        },
        'magic harp' => {
            price => 50,
            weight => 30,
            charge => 8,
            appearance => 'harp',
            subtype => 'instrument',
            tonal => 1,
            material => 'wood',
        },
        'bell' => {
            price => 50,
            weight => 30,
            charge => 0,
            subtype => 'instrument',
            tonal => 0,
            material => 'copper',
        },

        'beartrap' => {
            price => 60,
            weight => 200,
            charge => 0,
            subtype => 'trap',
            material => 'iron',
        },
        'land mine' => {
            price => 180,
            weight => 300,
            charge => 0,
            appearance => 'land mine',
            subtype => 'trap',
            material => 'iron',
        },

        'pick-axe' => {
            sdam     => 'd6',
            ldam     => 'd3',
            tohit    => '0',
            hands    => 1,
            price    => 50,
            weight   => 100,
            charge   => '',
            subtype  => 'weapon',
            material => 'iron',
        },
        'grappling hook' => {
            sdam       => 'd2',
            ldam       => 'd6',
            tohit      => '0',
            hands      => 1,
            price      => 50,
            weight     => 30,
            charge     => '',
            appearance => 'iron hook',
            subtype    => 'weapon',
            material   => 'iron',
        },
        'unicorn horn' => {
            sdam     => 'd12',
            ldam     => 'd12',
            tohit    => '1',
            hands    => 2,
            price    => 100,
            weight   => 20,
            charge   => '',
            weaptool => 1,
            subtype  => 'weapon',
            material => 'bone',
        },
        'expensive camera' => {
            price => 200,
            weight => 12,
            charge => 99,
            material => 'plastic',
        },
        'mirror' => {
            price => 10,
            weight => 13,
            charge => 0,
            appearance => 'looking glass',
            material => 'glass',
        },
        'crystal ball' => {
            price => 60,
            weight => 150,
            charge => 5,
            appearance => 'glass orb',
            material => 'glass',
        },
        'lenses' => {
            price => 80,
            weight => 3,
            charge => 0,
            subtype => 'accessory',
            material => 'glass',
        },
        'blindfold' => {
            price => 20,
            weight => 2,
            charge => 0,
            subtype => 'accessory',
            material => 'cloth',
        },
        'towel' => {
            price => 50,
            weight => 2,
            charge => 0,
            subtype => 'accessory',
            material => 'cloth',
        },
        'saddle' => {
            price => 150,
            weight => 200,
            charge => 0,
            material => 'leather',
        },
        'leash' => {
            price => 20,
            weight => 12,
            charge => 0,
            material => 'leather',
        },
        'stethoscope' => {
            price => 75,
            weight => 4,
            charge => 0,
            material => 'iron',
        },
        'tinning kit' => {
            price => 30,
            weight => 100,
            charge => 99,
            material => 'iron',
        },
        'tin opener' => {
            price => 30,
            weight => 4,
            charge => 0,
            material => 'iron',
        },
        'can of grease' => {
            price => 20,
            weight => 15,
            charge => 25,
            material => 'iron',
        },
        'magic marker' => {
            price => 50,
            weight => 2,
            charge => 99,
            material => 'plastic',
        },
    };

    for my $monster (NetHack::Monster::Spoiler->list) {
        next if $monster->is_unique;
        next if $monster->is_human;
        next if $monster->name eq 'mail daemon';

        my $name = "figurine of ";
        $name .= $monster->name =~ /^[aeiou]/i ? "an " : "a ";
        $name .= $monster->name;

        $tools->{$name} = {
            price    => 80,
            weight   => 50,
            charge   => 0,
            subtype  => 'figurine',
            material => 'mineral',
            monster  => $monster,
        };
    }

    return $tools, (glyph => '(');
}

sub extra_plurals {
    return {
        candle => 'candles',
    };
}

1;


