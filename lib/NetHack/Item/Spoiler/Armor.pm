#!/usr/bin/env perl
package NetHack::Item::Spoiler::Armor;
use strict;
use warnings;
use base 'NetHack::Item::Spoiler';

use constant type => 'armor';

my @cloaks  = ('tattered cape', 'opera cloak', 'ornamental cope', 'piece of cloth');
my @helmets = map { "$_ helmet" } qw/plumed etched crested visored/;
my @gloves  = map { "$_ gloves" } qw/old padded riding fencing/;
my @boots   = map { "$_ boots"  } qw/combat jungle hiking mud buckled riding snow/;

sub _list {
    my $armor = {
        'Mitre of Holiness' => {
            artifact   => 1,
            base       => 'helm of brilliance',
            value      => 2000,
            weight     => 50,
            ac         => 1,
            fullname   => 'The Mitre of Holiness',
            material   => 'iron',
            subtype    => 'helmet',
        },

        'Hawaiian shirt' => {
            value      => 3,
            weight     => 5,
            ac         => 0,
            material   => 'cloth',
            subtype    => 'shirt',
        },
        'T-shirt' => {
            value      => 2,
            weight     => 5,
            ac         => 0,
            material   => 'cloth',
            subtype    => 'shirt',
        },

        'leather jacket' => {
            value      => 10,
            weight     => 30,
            ac         => 1,
            material   => 'leather',
            subtype    => 'bodyarmor',
        },
        'leather armor' => {
            value      => 5,
            weight     => 150,
            ac         => 2,
            material   => 'leather',
            subtype    => 'bodyarmor',
        },
        'orcish ring mail' => {
            value      => 80,
            weight     => 250,
            ac         => 2,
            material   => 'iron',
            mc         => 1,
            appearance => 'crude ring mail',
            subtype    => 'bodyarmor',
        },
        'studded leather armor' => {
            value      => 15,
            weight     => 200,
            ac         => 3,
            material   => 'leather',
            mc         => 1,
            subtype    => 'bodyarmor',
        },
        'ring mail' => {
            value      => 100,
            weight     => 250,
            ac         => 3,
            material   => 'iron',
            subtype    => 'bodyarmor',
        },
        'scale mail' => {
            value      => 45,
            weight     => 250,
            ac         => 4,
            material   => 'iron',
            subtype    => 'bodyarmor',
        },
        'orcish chain mail' => {
            value      => 75,
            weight     => 300,
            ac         => 4,
            material   => 'iron',
            mc         => 1,
            appearance => 'crude chain mail',
            subtype    => 'bodyarmor',
        },
        'chain mail' => {
            value      => 75,
            weight     => 300,
            ac         => 5,
            material   => 'iron',
            mc         => 1,
            subtype    => 'bodyarmor',
        },
        'elven mithril-coat' => {
            value      => 240,
            weight     => 150,
            ac         => 5,
            material   => 'mithril',
            mc         => 3,
            subtype    => 'bodyarmor',
        },
        'splint mail' => {
            value      => 80,
            weight     => 400,
            ac         => 6,
            material   => 'iron',
            mc         => 1,
            subtype    => 'bodyarmor',
        },
        'banded mail' => {
            value      => 90,
            weight     => 350,
            ac         => 6,
            material   => 'iron',
            subtype    => 'bodyarmor',
        },
        'dwarvish mithril-coat' => {
            value      => 240,
            weight     => 150,
            ac         => 6,
            material   => 'mithril',
            mc         => 3,
            subtype    => 'bodyarmor',
        },
        'bronze plate mail' => {
            value      => 400,
            weight     => 450,
            ac         => 6,
            material   => 'copper',
            subtype    => 'bodyarmor',
        },
        'plate mail' => {
            value      => 600,
            weight     => 450,
            ac         => 7,
            material   => 'iron',
            mc         => 2,
            subtype    => 'bodyarmor',
        },
        'crystal plate mail' => {
            value      => 820,
            weight     => 450,
            ac         => 7,
            material   => 'glass',
            mc         => 2,
            subtype    => 'bodyarmor',
        },
        'red dragon scales' => {
            value      => 500,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'white dragon scales' => {
            value      => 500,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'orange dragon scales' => {
            value      => 500,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'blue dragon scales' => {
            value      => 500,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'green dragon scales' => {
            value      => 500,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'yellow dragon scales' => {
            value      => 500,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'black dragon scales' => {
            value      => 700,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'silver dragon scales' => {
            value      => 700,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'gray dragon scales' => {
            value      => 700,
            weight     => 40,
            ac         => 3,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'red dragon scale mail' => {
            value      => 900,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'white dragon scale mail' => {
            value      => 900,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'orange dragon scale mail' => {
            value      => 900,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'blue dragon scale mail' => {
            value      => 900,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'green dragon scale mail' => {
            value      => 900,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'yellow dragon scale mail' => {
            value      => 900,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'black dragon scale mail' => {
            value      => 1200,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'silver dragon scale mail' => {
            value      => 1200,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'gray dragon scale mail' => {
            value      => 1200,
            weight     => 40,
            ac         => 9,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },

        'mummy wrapping' => {
            value      => 2,
            weight     => 3,
            ac         => 0,
            material   => 'cloth',
            mc         => 1,
            subtype    => 'cloak',
        },
        'orcish cloak' => {
            value      => 40,
            weight     => 10,
            ac         => 0,
            material   => 'cloth',
            mc         => 2,
            appearance => 'coarse mantelet',
            subtype    => 'cloak',
        },
        'dwarvish cloak' => {
            value      => 50,
            weight     => 10,
            ac         => 0,
            material   => 'cloth',
            mc         => 2,
            appearance => 'hooded cloak',
            subtype    => 'cloak',
        },
        'leather cloak' => {
            value      => 40,
            weight     => 15,
            ac         => 1,
            material   => 'leather',
            mc         => 1,
            subtype    => 'cloak',
        },
        'oilskin cloak' => {
            value      => 50,
            weight     => 10,
            ac         => 1,
            material   => 'cloth',
            mc         => 3,
            appearance => 'slippery cloak',
            subtype    => 'cloak',
        },
        'alchemy smock' => {
            value      => 50,
            weight     => 10,
            ac         => 1,
            material   => 'cloth',
            mc         => 1,
            appearance => 'apron',
            subtype    => 'cloak',
        },
        'elven cloak' => {
            value      => 60,
            weight     => 10,
            ac         => 1,
            material   => 'cloth',
            mc         => 3,
            appearance => 'faded pall',
            subtype    => 'cloak',
        },
        'robe' => {
            value      => 50,
            weight     => 15,
            ac         => 2,
            material   => 'cloth',
            mc         => 3,
            subtype    => 'cloak',
        },
        'cloak of displacement' => {
            value       => 50,
            weight      => 10,
            ac          => 1,
            material    => 'cloth',
            mc          => 2,
            appearances => \@cloaks,
            subtype    => 'cloak',
        },
        'cloak of invisibility' => {
            value       => 60,
            weight      => 10,
            ac          => 1,
            material    => 'cloth',
            mc          => 2,
            appearances => \@cloaks,
            subtype    => 'cloak',
        },
        'cloak of magic resistance' => {
            value       => 60,
            weight      => 10,
            ac          => 1,
            material    => 'cloth',
            mc          => 3,
            appearances => \@cloaks,
            subtype    => 'cloak',
        },
        'cloak of protection' => {
            value       => 50,
            weight      => 10,
            ac          => 3,
            material    => 'cloth',
            mc          => 3,
            appearances => \@cloaks,
            subtype    => 'cloak',
        },

        'fedora' => {
            value      => 1,
            weight     => 3,
            ac         => 0,
            material   => 'cloth',
            subtype    => 'helmet',
        },
        'dunce cap' => {
            value      => 1,
            weight     => 4,
            ac         => 0,
            material   => 'cloth',
            appearance => 'conical hat',
            subtype    => 'helmet',
        },
        'cornuthaum' => {
            value      => 80,
            weight     => 4,
            ac         => 0,
            material   => 'cloth',
            mc         => 2,
            appearance => 'conical hat',
            subtype    => 'helmet',
        },
        'dented pot' => {
            value      => 8,
            weight     => 10,
            ac         => 1,
            material   => 'iron',
            subtype    => 'helmet',
        },
        'elven leather helm' => {
            value      => 8,
            weight     => 3,
            ac         => 1,
            material   => 'leather',
            appearance => 'leather hat',
            subtype    => 'helmet',
        },
        'orcish helm' => {
            value      => 10,
            weight     => 30,
            ac         => 1,
            material   => 'iron',
            appearance => 'iron skull cap',
            subtype    => 'helmet',
        },
        'dwarvish iron helm' => {
            value      => 20,
            weight     => 40,
            ac         => 2,
            material   => 'iron',
            appearance => 'hard hat',
            subtype    => 'helmet',
        },
        'helmet' => {
            value       => 10,
            weight      => 30,
            ac          => 1,
            material    => 'iron',
            appearances => \@helmets,
            subtype    => 'helmet',
        },
        'helm of brilliance' => {
            value       => 50,
            weight      => 50,
            ac          => 1,
            material    => 'iron',
            appearances => \@helmets,
            subtype    => 'helmet',
        },
        'helm of opposite alignment' => {
            value       => 50,
            weight      => 50,
            ac          => 1,
            material    => 'iron',
            appearances => \@helmets,
            subtype    => 'helmet',
        },
        'helm of telepathy' => {
            value       => 50,
            weight      => 50,
            ac          => 1,
            material    => 'iron',
            appearances => \@helmets,
            subtype    => 'helmet',
        },

        'leather gloves' => {
            value       => 8,
            weight      => 10,
            ac          => 1,
            material    => 'leather',
            appearances => \@gloves,
            subtype    => 'gloves',
        },
        'gauntlets of dexterity' => {
            value       => 50,
            weight      => 10,
            ac          => 1,
            material    => 'leather',
            appearances => \@gloves,
            subtype    => 'gloves',
        },
        'gauntlets of fumbling' => {
            value       => 50,
            weight      => 10,
            ac          => 1,
            material    => 'leather',
            appearances => \@gloves,
            subtype    => 'gloves',
        },
        'gauntlets of power' => {
            value       => 50,
            weight      => 30,
            ac          => 1,
            material    => 'iron',
            appearances => \@gloves,
            subtype    => 'gloves',
        },

        'small shield' => {
            value      => 3,
            weight     => 30,
            ac         => 1,
            material   => 'wood',
            subtype    => 'shield',
        },
        'orcish shield' => {
            value      => 7,
            weight     => 50,
            ac         => 1,
            material   => 'iron',
            appearance => 'red-eyed shield',
            subtype    => 'shield',
        },
        'Uruk-hai shield' => {
            value      => 7,
            weight     => 50,
            ac         => 1,
            material   => 'iron',
            appearance => 'white-handed shield',
            subtype    => 'shield',
        },
        'elven shield' => {
            value      => 7,
            weight     => 40,
            ac         => 2,
            material   => 'wood',
            appearance => 'blue and green shield',
            subtype    => 'shield',
        },
        'dwarvish roundshield' => {
            value      => 10,
            weight     => 100,
            ac         => 2,
            material   => 'iron',
            appearance => 'large round shield',
            subtype    => 'shield',
        },
        'large shield' => {
            value      => 10,
            weight     => 100,
            ac         => 2,
            material   => 'iron',
            subtype    => 'shield',
        },
        'shield of reflection' => {
            value      => 50,
            weight     => 50,
            ac         => 2,
            material   => 'silver',
            appearance => 'polished silver shield',
            subtype    => 'shield',
        },

        'low boots' => {
            value      => 8,
            weight     => 10,
            ac         => 1,
            material   => 'leather',
            appearance => 'walking shoes',
            subtype    => 'boots',
        },
        'high boots' => {
            value      => 12,
            weight     => 20,
            ac         => 2,
            material   => 'leather',
            appearance => 'jackboots',
            subtype    => 'boots',
        },
        'iron shoes' => {
            value      => 16,
            weight     => 50,
            ac         => 2,
            material   => 'iron',
            appearance => 'hard shoes',
            subtype    => 'boots',
        },
        'elven boots' => {
            value       => 8,
            weight      => 15,
            ac          => 1,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'kicking boots' => {
            value       => 8,
            weight      => 15,
            ac          => 1,
            material    => 'iron',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'fumble boots' => {
            value       => 30,
            weight      => 20,
            ac          => 1,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'levitation boots' => {
            value       => 30,
            weight      => 15,
            ac          => 1,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'jumping boots' => {
            value       => 50,
            weight      => 20,
            ac          => 1,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'speed boots' => {
            value       => 50,
            weight      => 20,
            ac          => 1,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'water walking boots' => {
            value       => 50,
            weight      => 20,
            ac          => 1,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
    };

    return $armor;
}

1;

