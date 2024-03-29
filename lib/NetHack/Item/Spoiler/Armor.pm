package NetHack::Item::Spoiler::Armor;
{
  $NetHack::Item::Spoiler::Armor::VERSION = '0.21';
}
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
            price      => 2000,
            weight     => 50,
            ac         => 1,
            mc         => 0,
            fullname   => 'The Mitre of Holiness',
            material   => 'iron',
            subtype    => 'helmet',
        },

        'Hawaiian shirt' => {
            price      => 3,
            weight     => 5,
            ac         => 0,
            mc         => 0,
            material   => 'cloth',
            subtype    => 'shirt',
        },
        'T-shirt' => {
            price      => 2,
            weight     => 5,
            ac         => 0,
            mc         => 0,
            material   => 'cloth',
            subtype    => 'shirt',
        },

        'leather jacket' => {
            price      => 10,
            weight     => 30,
            ac         => 1,
            mc         => 0,
            material   => 'leather',
            subtype    => 'bodyarmor',
        },
        'leather armor' => {
            price      => 5,
            weight     => 150,
            ac         => 2,
            mc         => 0,
            material   => 'leather',
            subtype    => 'bodyarmor',
        },
        'orcish ring mail' => {
            price      => 80,
            weight     => 250,
            ac         => 2,
            material   => 'iron',
            mc         => 1,
            appearance => 'crude ring mail',
            subtype    => 'bodyarmor',
        },
        'studded leather armor' => {
            price      => 15,
            weight     => 200,
            ac         => 3,
            material   => 'leather',
            mc         => 1,
            subtype    => 'bodyarmor',
        },
        'ring mail' => {
            price      => 100,
            weight     => 250,
            ac         => 3,
            mc         => 0,
            material   => 'iron',
            subtype    => 'bodyarmor',
        },
        'scale mail' => {
            price      => 45,
            weight     => 250,
            ac         => 4,
            mc         => 0,
            material   => 'iron',
            subtype    => 'bodyarmor',
        },
        'orcish chain mail' => {
            price      => 75,
            weight     => 300,
            ac         => 4,
            material   => 'iron',
            mc         => 1,
            appearance => 'crude chain mail',
            subtype    => 'bodyarmor',
        },
        'chain mail' => {
            price      => 75,
            weight     => 300,
            ac         => 5,
            material   => 'iron',
            mc         => 1,
            subtype    => 'bodyarmor',
        },
        'elven mithril-coat' => {
            price      => 240,
            weight     => 150,
            ac         => 5,
            material   => 'mithril',
            mc         => 3,
            subtype    => 'bodyarmor',
        },
        'splint mail' => {
            price      => 80,
            weight     => 400,
            ac         => 6,
            material   => 'iron',
            mc         => 1,
            subtype    => 'bodyarmor',
        },
        'banded mail' => {
            price      => 90,
            weight     => 350,
            ac         => 6,
            mc         => 0,
            material   => 'iron',
            subtype    => 'bodyarmor',
        },
        'dwarvish mithril-coat' => {
            price      => 240,
            weight     => 150,
            ac         => 6,
            material   => 'mithril',
            mc         => 3,
            subtype    => 'bodyarmor',
        },
        'bronze plate mail' => {
            price      => 400,
            weight     => 450,
            ac         => 6,
            mc         => 0,
            material   => 'copper',
            subtype    => 'bodyarmor',
        },
        'plate mail' => {
            price      => 600,
            weight     => 450,
            ac         => 7,
            material   => 'iron',
            mc         => 2,
            subtype    => 'bodyarmor',
        },
        'crystal plate mail' => {
            price      => 820,
            weight     => 450,
            ac         => 7,
            material   => 'glass',
            mc         => 2,
            subtype    => 'bodyarmor',
        },
        'red dragon scales' => {
            price      => 500,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'white dragon scales' => {
            price      => 500,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'orange dragon scales' => {
            price      => 500,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'blue dragon scales' => {
            price      => 500,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'green dragon scales' => {
            price      => 500,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'yellow dragon scales' => {
            price      => 500,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'black dragon scales' => {
            price      => 700,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'silver dragon scales' => {
            price      => 700,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'gray dragon scales' => {
            price      => 700,
            weight     => 40,
            ac         => 3,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'red dragon scale mail' => {
            price      => 900,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'white dragon scale mail' => {
            price      => 900,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'orange dragon scale mail' => {
            price      => 900,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'blue dragon scale mail' => {
            price      => 900,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'green dragon scale mail' => {
            price      => 900,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'yellow dragon scale mail' => {
            price      => 900,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'black dragon scale mail' => {
            price      => 1200,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'silver dragon scale mail' => {
            price      => 1200,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },
        'gray dragon scale mail' => {
            price      => 1200,
            weight     => 40,
            ac         => 9,
            mc         => 0,
            material   => 'dragon hide',
            subtype    => 'bodyarmor',
        },

        'mummy wrapping' => {
            price      => 2,
            weight     => 3,
            ac         => 0,
            material   => 'cloth',
            mc         => 1,
            subtype    => 'cloak',
        },
        'orcish cloak' => {
            price      => 40,
            weight     => 10,
            ac         => 0,
            material   => 'cloth',
            mc         => 2,
            appearance => 'coarse mantelet',
            subtype    => 'cloak',
        },
        'dwarvish cloak' => {
            price      => 50,
            weight     => 10,
            ac         => 0,
            material   => 'cloth',
            mc         => 2,
            appearance => 'hooded cloak',
            subtype    => 'cloak',
        },
        'leather cloak' => {
            price      => 40,
            weight     => 15,
            ac         => 1,
            material   => 'leather',
            mc         => 1,
            subtype    => 'cloak',
        },
        'oilskin cloak' => {
            price      => 50,
            weight     => 10,
            ac         => 1,
            material   => 'cloth',
            mc         => 3,
            appearance => 'slippery cloak',
            subtype    => 'cloak',
        },
        'alchemy smock' => {
            price      => 50,
            weight     => 10,
            ac         => 1,
            material   => 'cloth',
            mc         => 1,
            appearance => 'apron',
            subtype    => 'cloak',
        },
        'elven cloak' => {
            price      => 60,
            weight     => 10,
            ac         => 1,
            material   => 'cloth',
            mc         => 3,
            appearance => 'faded pall',
            subtype    => 'cloak',
        },
        'robe' => {
            price      => 50,
            weight     => 15,
            ac         => 2,
            material   => 'cloth',
            mc         => 3,
            subtype    => 'cloak',
        },
        'cloak of displacement' => {
            price       => 50,
            weight      => 10,
            ac          => 1,
            material    => 'cloth',
            mc          => 2,
            appearances => \@cloaks,
            subtype    => 'cloak',
        },
        'cloak of invisibility' => {
            price       => 60,
            weight      => 10,
            ac          => 1,
            material    => 'cloth',
            mc          => 2,
            appearances => \@cloaks,
            subtype    => 'cloak',
        },
        'cloak of magic resistance' => {
            price       => 60,
            weight      => 10,
            ac          => 1,
            material    => 'cloth',
            mc          => 3,
            appearances => \@cloaks,
            subtype    => 'cloak',
        },
        'cloak of protection' => {
            price       => 50,
            weight      => 10,
            ac          => 3,
            material    => 'cloth',
            mc          => 3,
            appearances => \@cloaks,
            subtype    => 'cloak',
        },

        'fedora' => {
            price      => 1,
            weight     => 3,
            ac         => 0,
            mc         => 0,
            material   => 'cloth',
            subtype    => 'helmet',
        },
        'dunce cap' => {
            price      => 1,
            weight     => 4,
            ac         => 0,
            mc         => 0,
            material   => 'cloth',
            appearance => 'conical hat',
            subtype    => 'helmet',
        },
        'cornuthaum' => {
            price      => 80,
            weight     => 4,
            ac         => 0,
            material   => 'cloth',
            mc         => 2,
            appearance => 'conical hat',
            subtype    => 'helmet',
        },
        'dented pot' => {
            price      => 8,
            weight     => 10,
            ac         => 1,
            mc         => 0,
            material   => 'iron',
            subtype    => 'helmet',
        },
        'elven leather helm' => {
            price      => 8,
            weight     => 3,
            ac         => 1,
            mc         => 0,
            material   => 'leather',
            appearance => 'leather hat',
            subtype    => 'helmet',
        },
        'orcish helm' => {
            price      => 10,
            weight     => 30,
            ac         => 1,
            mc         => 0,
            material   => 'iron',
            appearance => 'iron skull cap',
            subtype    => 'helmet',
        },
        'dwarvish iron helm' => {
            price      => 20,
            weight     => 40,
            ac         => 2,
            mc         => 0,
            material   => 'iron',
            appearance => 'hard hat',
            subtype    => 'helmet',
        },
        'helmet' => {
            price       => 10,
            weight      => 30,
            ac          => 1,
            mc         => 0,
            material    => 'iron',
            appearances => \@helmets,
            subtype    => 'helmet',
        },
        'helm of brilliance' => {
            price       => 50,
            weight      => 50,
            ac          => 1,
            mc         => 0,
            material    => 'iron',
            appearances => \@helmets,
            subtype    => 'helmet',
        },
        'helm of opposite alignment' => {
            price       => 50,
            weight      => 50,
            ac          => 1,
            mc         => 0,
            material    => 'iron',
            appearances => \@helmets,
            subtype    => 'helmet',
        },
        'helm of telepathy' => {
            price       => 50,
            weight      => 50,
            ac          => 1,
            mc         => 0,
            material    => 'iron',
            appearances => \@helmets,
            subtype    => 'helmet',
        },

        'leather gloves' => {
            price       => 8,
            weight      => 10,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@gloves,
            subtype    => 'gloves',
        },
        'gauntlets of dexterity' => {
            price       => 50,
            weight      => 10,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@gloves,
            subtype    => 'gloves',
        },
        'gauntlets of fumbling' => {
            price       => 50,
            weight      => 10,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@gloves,
            subtype    => 'gloves',
        },
        'gauntlets of power' => {
            price       => 50,
            weight      => 30,
            ac          => 1,
            mc         => 0,
            material    => 'iron',
            appearances => \@gloves,
            subtype    => 'gloves',
        },

        'small shield' => {
            price      => 3,
            weight     => 30,
            ac         => 1,
            mc         => 0,
            material   => 'wood',
            subtype    => 'shield',
        },
        'orcish shield' => {
            price      => 7,
            weight     => 50,
            ac         => 1,
            mc         => 0,
            material   => 'iron',
            appearance => 'red-eyed shield',
            subtype    => 'shield',
        },
        'Uruk-hai shield' => {
            price      => 7,
            weight     => 50,
            ac         => 1,
            mc         => 0,
            material   => 'iron',
            appearance => 'white-handed shield',
            subtype    => 'shield',
        },
        'elven shield' => {
            price      => 7,
            weight     => 40,
            ac         => 2,
            mc         => 0,
            material   => 'wood',
            appearance => 'blue and green shield',
            subtype    => 'shield',
        },
        'dwarvish roundshield' => {
            price      => 10,
            weight     => 100,
            ac         => 2,
            mc         => 0,
            material   => 'iron',
            appearance => 'large round shield',
            subtype    => 'shield',
        },
        'large shield' => {
            price      => 10,
            weight     => 100,
            ac         => 2,
            mc         => 0,
            material   => 'iron',
            subtype    => 'shield',
        },
        'shield of reflection' => {
            price      => 50,
            weight     => 50,
            ac         => 2,
            mc         => 0,
            material   => 'silver',
            appearance => 'polished silver shield',
            subtype    => 'shield',
        },

        'low boots' => {
            price      => 8,
            weight     => 10,
            ac         => 1,
            mc         => 0,
            material   => 'leather',
            appearance => 'walking shoes',
            subtype    => 'boots',
        },
        'high boots' => {
            price      => 12,
            weight     => 20,
            ac         => 2,
            mc         => 0,
            material   => 'leather',
            appearance => 'jackboots',
            subtype    => 'boots',
        },
        'iron shoes' => {
            price      => 16,
            weight     => 50,
            ac         => 2,
            mc         => 0,
            material   => 'iron',
            appearance => 'hard shoes',
            subtype    => 'boots',
        },
        'elven boots' => {
            price       => 8,
            weight      => 15,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'kicking boots' => {
            price       => 8,
            weight      => 15,
            ac          => 1,
            mc         => 0,
            material    => 'iron',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'fumble boots' => {
            price       => 30,
            weight      => 20,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'levitation boots' => {
            price       => 30,
            weight      => 15,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'jumping boots' => {
            price       => 50,
            weight      => 20,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'speed boots' => {
            price       => 50,
            weight      => 20,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
        'water walking boots' => {
            price       => 50,
            weight      => 20,
            ac          => 1,
            mc         => 0,
            material    => 'leather',
            appearances => \@boots,
            subtype    => 'boots',
        },
    };

    return $armor, (glyph => '[');
}

1;

