#!/usr/bin/env perl
package NetHack::Item::Spoiler::Weapon;
our $VERSION = '0.05';

use strict;
use warnings;
use base 'NetHack::Item::Spoiler';

use constant type => 'weapon';

sub _list {
    my $weapons = {
            'Cleaver' => {
                artifact => 1,
                base     => 'battle-axe',
                sdam     => 'd8+d6+d4',
                ldam     => '2d6+2d4',
                tohit    => 'd3',
                hands    => 2,
                weight   => 120,
                price    => 1500,
                material => 'iron',
            },
            'Demonbane' => {
                artifact => 1,
                base     => 'long sword',
                sdam     => 'd8',
                ldam     => 'd12',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 2500,
                material => 'iron',
            },
            'Dragonbane' => {
                artifact => 1,
                base     => 'broadsword',
                sdam     => '2d4',
                ldam     => 'd6+1',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 500,
                material => 'iron',
            },
            'Excalibur' => {
                artifact => 1,
                base     => 'long sword',
                sdam     => 'd8+d10',
                ldam     => 'd12+d10',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 4000,
                material => 'iron',
            },
            'Fire Brand' => {
                artifact => 1,
                base     => 'long sword',
                sdam     => 'd8',
                ldam     => 'd12',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 3000,
                material => 'iron',
            },
            'Frost Brand' => {
                artifact => 1,
                base     => 'long sword',
                sdam     => 'd8',
                ldam     => 'd12',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 3000,
                material => 'iron',
            },
            'Giantslayer' => {
                artifact => 1,
                base     => 'long sword',
                sdam     => 'd8',
                ldam     => 'd12',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 200,
                material => 'iron',
            },
            'Grayswandir' => {
                artifact => 1,
                base     => 'silver saber',
                sdam     => 'd8',
                ldam     => 'd8',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 8000,
                material => 'silver',
            },
            'Grimtooth' => {
                artifact => 1,
                base     => 'orcish dagger',
                sdam     => 'd6+d3',
                ldam     => 'd6+d3',
                tohit    => 'd2+2',
                hands    => 1,
                weight   => 10,
                price    => 300,
                material => 'iron',
            },
            'Longbow of Diana' => {
                artifact => 1,
                base     => 'bow',
                sdam     => 'd2',
                ldam     => 'd2',
                tohit    => 'd5',
                hands    => 1,
                weight   => 30,
                price    => 4000,
                fullname => 'The Longbow of Diana',
                material => 'wood',
            },
            'Magicbane' => {
                artifact => 1,
                base     => 'athame',
                sdam     => '2d4',
                ldam     => 'd4+d3',
                tohit    => 'd5+2',
                hands    => 1,
                weight   => 10,
                price    => 3500,
                material => 'iron',
            },
            'Mjollnir' => {
                artifact => 1,
                base     => 'war hammer',
                sdam     => 'd4+1',
                ldam     => 'd4',
                tohit    => 'd5',
                hands    => 1,
                weight   => 50,
                price    => 4000,
                material => 'iron',
            },
            'Ogresmasher' => {
                artifact => 1,
                base     => 'war hammer',
                sdam     => 'd4+1',
                ldam     => 'd4',
                tohit    => 'd5',
                hands    => 1,
                weight   => 50,
                price    => 200,
                material => 'iron',
            },
            'Orcrist' => {
                artifact => 1,
                base     => 'elven broadsword',
                sdam     => 'd6+d4',
                ldam     => 'd6+1',
                tohit    => 'd5',
                hands    => 1,
                weight   => 70,
                price    => 2000,
                material => 'wood',
            },
            'Sceptre of Might' => {
                artifact => 1,
                base     => 'mace',
                sdam     => 'd6+1',
                ldam     => 'd6',
                tohit    => 'd5',
                hands    => 1,
                weight   => 30,
                price    => 2500,
                fullname => 'The Sceptre of Might',
                material => 'iron',
            },
            'Snickersnee' => {
                artifact => 1,
                base     => 'katana',
                sdam     => 'd10+d8',
                ldam     => 'd12+d8',
                tohit    => '1',
                hands    => 1,
                weight   => 40,
                price    => 1200,
                material => 'iron',
            },
            'Staff of Aesculapius' => {
                artifact => 1,
                base     => 'quarterstaff',
                sdam     => 'd6',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 2,
                weight   => 40,
                price    => 5000,
                fullname => 'The Staff of Aesculapius',
                material => 'wood',
            },
            'Sting' => {
                artifact => 1,
                base     => 'elven dagger',
                sdam     => 'd5',
                ldam     => 'd3',
                tohit    => 'd5+2',
                hands    => 1,
                weight   => 10,
                price    => 800,
                material => 'wood',
            },
            'Stormbringer' => {
                artifact => 1,
                base     => 'runesword',
                sdam     => '2d4+d2',
                ldam     => 'd6+d2+1',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 8000,
                material => 'iron',
            },
            'Sunsword' => {
                artifact => 1,
                base     => 'long sword',
                sdam     => 'd8',
                ldam     => 'd12',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 1500,
                material => 'iron',
            },
            'Tsurugi of Muramasa' => {
                artifact => 1,
                base     => 'tsurugi',
                sdam     => 'd16+d8',
                ldam     => '2d8+2d6',
                tohit    => '2',
                hands    => 2,
                weight   => 60,
                price    => 4500,
                fullname => 'The Tsurugi of Muramasa',
                material => 'metal',
            },
            'Trollsbane' => {
                artifact => 1,
                base     => 'morning star',
                sdam     => '2d4',
                ldam     => 'd6+1',
                tohit    => 'd5',
                hands    => 1,
                weight   => 120,
                price    => 200,
                material => 'iron',
            },
            'Vorpal Blade' => {
                artifact => 1,
                base     => 'long sword',
                sdam     => 'd8+1',
                ldam     => 'd12+1',
                tohit    => 'd5',
                hands    => 1,
                weight   => 40,
                price    => 4000,
                material => 'iron',
            },
            'Werebane' => {
                artifact => 1,
                base     => 'silver saber',
                sdam     => 'd8',
                ldam     => 'd8',
                tohit    => 'd2',
                hands    => 1,
                weight   => 40,
                price    => 1500,
                material => 'silver',
            },

            'aklys' => {
                sdam     => 'd6',
                ldam     => 'd3',
                tohit    => '0',
                hands    => 1,
                weight   => 15,
                price    => 4,
                material => 'iron',
                appearance => 'thonged club',
                plural => 'aklyses',
            },
            'arrow' => {
                sdam     => 'd6',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 1,
                weight   => 1,
                price    => 2,
                material => 'iron',
                plural => 'arrows',
            },
            'athame' => {
                sdam     => 'd4',
                ldam     => 'd3',
                tohit    => '2',
                hands    => 1,
                weight   => 10,
                price    => 4,
                material => 'iron',
                plural => 'athames',
            },
            'axe' => {
                sdam     => 'd6',
                ldam     => 'd4',
                tohit    => '0',
                hands    => 1,
                weight   => 60,
                price    => 8,
                material => 'iron',
                plural => 'axes',
            },
            'bardiche' => {
                sdam     => '2d4',
                ldam     => '3d4',
                tohit    => '0',
                hands    => 2,
                weight   => 120,
                price    => 7,
                material => 'iron',
                appearance => 'long poleaxe',
                plural => 'bardiches',
            },
            'battle-axe' => {
                sdam     => 'd8+d4',
                ldam     => 'd6+2d4',
                tohit    => '0',
                hands    => 2,
                weight   => 120,
                price    => 40,
                material => 'iron',
                appearance => 'double-headed axe',
                plural => 'battle-axes',
            },
            'bec de corbin' => {
                sdam     => 'd8',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 2,
                weight   => 100,
                price    => 8,
                material => 'iron',
                appearance => 'beaked polearm',
                plural => 'bec de corbins',
            },
            'bill-guisarme' => {
                sdam     => '2d4',
                ldam     => 'd10',
                tohit    => '0',
                hands    => 2,
                weight   => 120,
                price    => 7,
                material => 'iron',
                appearance => 'hooked polearm',
                plural => 'bill-guisarmes',
            },
            'boomerang' => {
                sdam     => 'd9',
                ldam     => 'd9',
                tohit    => '0',
                hands    => 1,
                weight   => 5,
                price    => 20,
                material => 'wood',
                plural => 'boomerangs',
            },
            'bow' => {
                sdam     => 'd2',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 60,
                material => 'wood',
                plural => 'bows',
            },
            'broadsword' => {
                sdam     => '2d4',
                ldam     => 'd6+1',
                tohit    => '0',
                hands    => 1,
                weight   => 70,
                price    => 10,
                material => 'iron',
                plural => 'broadswords',
            },
            'bullwhip' => {
                sdam     => 'd2',
                ldam     => '1',
                tohit    => '0',
                hands    => 1,
                weight   => 20,
                price    => 4,
                material => 'leather',
                plural => 'bullwhips',
            },
            'club' => {
                sdam     => 'd6',
                ldam     => 'd3',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 3,
                material => 'wood',
                plural => 'clubs',
            },
            'crossbow' => {
                sdam     => 'd2',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 50,
                price    => 40,
                material => 'wood',
                plural => 'crossbows',
            },
            'crossbow bolt' => {
                sdam     => 'd4+1',
                ldam     => 'd6+1',
                tohit    => '0',
                hands    => 1,
                weight   => 1,
                price    => 2,
                material => 'iron',
                plural => 'crossbow bolts',
            },
            'crysknife' => {
                sdam     => 'd10',
                ldam     => 'd10',
                tohit    => '3',
                hands    => 1,
                weight   => 20,
                price    => 100,
                material => 'mineral',
                plural => 'crysknives',
            },
            'dagger' => {
                sdam     => 'd4',
                ldam     => 'd3',
                tohit    => '2',
                hands    => 1,
                weight   => 10,
                price    => 4,
                material => 'iron',
                plural => 'daggers',
            },
            'dart' => {
                sdam     => 'd3',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 1,
                price    => 2,
                material => 'iron',
                plural => 'darts',
            },
            'dwarvish mattock' => {
                sdam     => 'd12',
                ldam     => 'd8+2d6',
                tohit    => '-1',
                hands    => 2,
                weight   => 120,
                price    => 50,
                material => 'iron',
                appearance => 'broad pick',
                plural => 'dwarvish mattocks',
            },
            'dwarvish short sword' => {
                sdam     => 'd7',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 10,
                material => 'iron',
                appearance => 'broad short sword',
                plural => 'dwarvish short swords',
            },
            'dwarvish spear' => {
                sdam     => 'd8',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 35,
                price    => 3,
                material => 'iron',
                appearance => 'stout spear',
                plural => 'dwarvish spears',
            },
            'elven arrow' => {
                sdam     => 'd7',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 1,
                weight   => 1,
                price    => 2,
                material => 'wood',
                appearance => 'runed arrow',
                plural => 'elven arrows',
            },
            'elven bow' => {
                sdam     => 'd2',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 60,
                material => 'wood',
                appearance => 'runed bow',
                plural => 'elven bows',
            },
            'elven broadsword' => {
                sdam     => 'd6+d4',
                ldam     => 'd6+1',
                tohit    => '0',
                hands    => 1,
                weight   => 70,
                price    => 10,
                material => 'wood',
                appearance => 'runed broadsword',
                plural => 'elven broadswords',
            },
            'elven dagger' => {
                sdam     => 'd5',
                ldam     => 'd3',
                tohit    => '2',
                hands    => 1,
                weight   => 10,
                price    => 4,
                material => 'wood',
                appearance => 'runed dagger',
                plural => 'elven daggers',
            },
            'elven short sword' => {
                sdam     => 'd8',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 10,
                material => 'wood',
                appearance => 'runed short sword',
                plural => 'elven short swords',
            },
            'elven spear' => {
                sdam     => 'd7',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 3,
                material => 'wood',
                appearance => 'runed spear',
                plural => 'elven spears',
            },
            'fauchard' => {
                sdam     => 'd6',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 2,
                weight   => 60,
                price    => 5,
                material => 'iron',
                appearance => 'pole sickle',
                plural => 'fauchards',
            },
            'flail' => {
                sdam     => 'd6+1',
                ldam     => '2d4',
                tohit    => '0',
                hands    => 1,
                weight   => 15,
                price    => 4,
                material => 'iron',
                plural => 'flails',
            },
            'flintstone' => {
                sdam     => 'd6',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 1,
                weight   => 10,
                price    => 1,
                material => 'mineral',
                plural => 'flintstones',
            },
            'glaive' => {
                sdam     => 'd6',
                ldam     => 'd10',
                tohit    => '0',
                hands    => 2,
                weight   => 75,
                price    => 6,
                material => 'iron',
                appearance => 'single-edged polearm',
                plural => 'glaives',
            },
            'guisarme' => {
                sdam     => '2d4',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 2,
                weight   => 80,
                price    => 5,
                material => 'iron',
                appearance => 'pruning hook',
                plural => 'guisarmes',
            },
            'halberd' => {
                sdam     => 'd10',
                ldam     => '2d6',
                tohit    => '0',
                hands    => 2,
                weight   => 150,
                price    => 10,
                material => 'iron',
                appearance => 'angled poleaxe',
                plural => 'halberds',
            },
            'javelin' => {
                sdam     => 'd6',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 1,
                weight   => 20,
                price    => 3,
                material => 'iron',
                appearance => 'throwing spear',
                plural => 'javelins',
            },
            'katana' => {
                sdam     => 'd10',
                ldam     => 'd12',
                tohit    => '1',
                hands    => 1,
                weight   => 40,
                price    => 80,
                material => 'iron',
                appearance => 'samurai sword',
                plural => 'katanas',
            },
            'knife' => {
                sdam     => 'd3',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 5,
                price    => 4,
                material => 'iron',
                plural => 'knives',
            },
            'lance' => {
                sdam     => 'd6',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 180,
                price    => 10,
                material => 'iron',
                plural => 'lances',
            },
            'long sword' => {
                sdam     => 'd8',
                ldam     => 'd12',
                tohit    => '0',
                hands    => 1,
                weight   => 40,
                price    => 15,
                material => 'iron',
                plural => 'long swords',
            },
            'lucern hammer' => {
                sdam     => '2d4',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 2,
                weight   => 150,
                price    => 7,
                material => 'iron',
                appearance => 'pronged polearm',
                plural => 'lucern hammers',
            },
            'mace' => {
                sdam     => 'd6+1',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 5,
                material => 'iron',
                plural => 'maces',
            },
            'morning star' => {
                sdam     => '2d4',
                ldam     => 'd6+1',
                tohit    => '0',
                hands    => 1,
                weight   => 120,
                price    => 10,
                material => 'iron',
                plural => 'morning stars',
            },
            'orcish arrow' => {
                sdam     => 'd5',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 1,
                weight   => 1,
                price    => 2,
                material => 'iron',
                appearance => 'crude arrow',
                plural => 'orcish arrows',
            },
            'orcish bow' => {
                sdam     => 'd2',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 60,
                material => 'wood',
                appearance => 'crude bow',
                plural => 'orcish bows',
            },
            'orcish dagger' => {
                sdam     => 'd3',
                ldam     => 'd3',
                tohit    => '2',
                hands    => 1,
                weight   => 10,
                price    => 4,
                material => 'iron',
                appearance => 'crude dagger',
                plural => 'orcish daggers',
            },
            'orcish short sword' => {
                sdam     => 'd5',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 10,
                material => 'iron',
                appearance => 'crude short sword',
                plural => 'orcish short swords',
            },
            'orcish spear' => {
                sdam     => 'd5',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 3,
                material => 'iron',
                appearance => 'crude spear',
                plural => 'orcish spears',
            },
            'partisan' => {
                sdam     => 'd6',
                ldam     => 'd6+1',
                tohit    => '0',
                hands    => 2,
                weight   => 80,
                price    => 10,
                material => 'iron',
                appearance => 'vulgar polearm',
                plural => 'partisans',
            },
            'quarterstaff' => {
                sdam     => 'd6',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 2,
                weight   => 40,
                price    => 5,
                material => 'wood',
                appearance => 'staff',
                plural => 'quarterstaves',
            },
            'ranseur' => {
                sdam     => '2d4',
                ldam     => '2d4',
                tohit    => '0',
                hands    => 2,
                weight   => 50,
                price    => 6,
                material => 'iron',
                appearance => 'hilted polearm',
                plural => 'ranseurs',
            },
            'rubber hose' => {
                sdam     => 'd4',
                ldam     => 'd3',
                tohit    => '0',
                hands    => 1,
                weight   => 20,
                price    => 3,
                material => 'plastic',
                plural => 'rubber hoses',
            },
            'runesword' => {
                sdam     => '2d4',
                ldam     => 'd6+1',
                tohit    => '0',
                hands    => 1,
                weight   => 40,
                price    => 300,
                material => 'iron',
                appearance => 'runed broadsword',
                plural => 'runeswords',
            },
            'scalpel' => {
                sdam     => 'd3',
                ldam     => 'd3',
                tohit    => '2',
                hands    => 1,
                weight   => 5,
                price    => 6,
                material => 'metal',
                plural => 'scalpels',
            },
            'scimitar' => {
                sdam     => 'd8',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 40,
                price    => 15,
                material => 'iron',
                appearance => 'curved sword',
                plural => 'scimitars',
            },
            'short sword' => {
                sdam     => 'd6',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 10,
                material => 'iron',
                plural => 'short swords',
            },
            'shuriken' => {
                sdam     => 'd8',
                ldam     => 'd6',
                tohit    => '2',
                hands    => 1,
                weight   => 1,
                price    => 5,
                material => 'iron',
                appearance => 'throwing star',
                plural => 'shuriken',
            },
            'silver arrow' => {
                sdam     => 'd6',
                ldam     => 'd6',
                tohit    => '0',
                hands    => 1,
                weight   => 1,
                price    => 5,
                material => 'silver',
                plural => 'silver arrows',
            },
            'silver dagger' => {
                sdam     => 'd4',
                ldam     => 'd3',
                tohit    => '2',
                hands    => 1,
                weight   => 12,
                price    => 40,
                material => 'silver',
                plural => 'silver daggers',
            },
            'silver saber' => {
                sdam     => 'd8',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 40,
                price    => 75,
                material => 'silver',
                plural => 'silver sabers',
            },
            'silver spear' => {
                sdam     => 'd6',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 36,
                price    => 40,
                material => 'silver',
                plural => 'silver spears',
            },
            'sling' => {
                sdam     => 'd2',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 3,
                price    => 20,
                material => 'leather',
                plural => 'slings',
            },
            'spear' => {
                sdam     => 'd6',
                ldam     => 'd8',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 3,
                material => 'iron',
                plural => 'spears',
            },
            'spetum' => {
                sdam     => 'd6+1',
                ldam     => '2d6',
                tohit    => '0',
                hands    => 2,
                weight   => 50,
                price    => 5,
                material => 'iron',
                appearance => 'forked polearm',
                plural => 'spetums',
            },
            'stiletto' => {
                sdam     => 'd3',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 5,
                price    => 4,
                material => 'iron',
                plural => 'stilettos',
            },
            'trident' => {
                sdam     => 'd6+1',
                ldam     => '3d4',
                tohit    => '0',
                hands    => 1,
                weight   => 25,
                price    => 5,
                material => 'iron',
                plural => 'tridents',
            },
            'tsurugi' => {
                sdam     => 'd16',
                ldam     => 'd8+2d6',
                tohit    => '2',
                hands    => 2,
                weight   => 60,
                price    => 500,
                material => 'metal',
                appearance => 'long samurai sword',
                plural => 'tsurugis',
            },
            'two-handed sword' => {
                sdam     => 'd12',
                ldam     => '3d6',
                tohit    => '0',
                hands    => 2,
                weight   => 150,
                price    => 50,
                material => 'iron',
                plural => 'two-handed swords',
            },
            'voulge' => {
                sdam     => '2d4',
                ldam     => '2d4',
                tohit    => '0',
                hands    => 2,
                weight   => 125,
                price    => 5,
                material => 'iron',
                appearance => 'pole cleaver',
                plural => 'voulges',
            },
            'war hammer' => {
                sdam     => 'd4+1',
                ldam     => 'd4',
                tohit    => '0',
                hands    => 1,
                weight   => 50,
                price    => 5,
                material => 'iron',
                plural => 'war hammers',
            },
            'worm tooth' => {
                sdam     => 'd2',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 20,
                price    => 2,
                material => 'none',
                plural => 'worm teeth',
            },
            'ya' => {
                sdam     => 'd7',
                ldam     => 'd7',
                tohit    => '1',
                hands    => 1,
                weight   => 1,
                price    => 4,
                material => 'metal',
                appearance => 'bamboo arrow',
                plural => 'ya',
            },
            'yumi' => {
                sdam     => 'd2',
                ldam     => 'd2',
                tohit    => '0',
                hands    => 1,
                weight   => 30,
                price    => 60,
                material => 'wood',
                appearance => 'long bow',
                plural => 'yumis',
            },
    };

    return $weapons;
}

# these are stackable weapon appearances where name != appearance
sub extra_plurals {
    my $self = shift;
    return {
        map { $_ => "${_}s" }
        'stout spear', 'runed arrow', 'runed dagger', 'runed spear',
        'crude arrow', 'crude dagger', 'crude spear', 'throwing spear',
        'throwing star', 'bamboo arrow'
    };
}

1;

