#!/usr/bin/env perl
use lib 't/lib';
use Test::NetHack::Items (
    "a - a +1 long sword (weapon in hand)",
    {is_quivered => 0, is_offhand => 0, is_wielded => 1},
    "f - a long sword (alternate weapon; not wielded)",
    {is_quivered => 0, is_offhand => 1, is_wielded => 0},
    "g - 2 darts (in quiver)",
    {is_quivered => 1, is_offhand => 0, is_wielded => 0},
    "e - an uncursed oil lamp (lit)",
    {recharges => undef, charges => undef,
     is_lit => 1, is_quivered => 0, is_offhand => 0, is_wielded => 0},
    "e - an uncursed oil lamp (lit) (weapon in hand)",
    {recharges => undef, charges => undef,
     is_lit => 1, is_quivered => 0, is_offhand => 0, is_wielded => 1},
    "h - a wand of fire (0:6)",
    {recharges => 0, charges => 6, is_quivered => 0, is_offhand => 0,
     is_wielded => 0},
    "h - a wand of fire (0:6) (alternate weapon; not wielded)",
    {recharges => 0, charges => 6, is_quivered => 0, is_offhand => 1,
     is_wielded => 0},
    "h - a wand of fire (0:-1)",
    {recharges => 0, charges => -1, is_quivered => 0, is_offhand => 0,
     is_wielded => 0},
    "i - a wand of cancellation (2:0)",
    {recharges => 2, charges => 0, is_quivered => 0, is_offhand => 0,
     is_wielded => 0},
    "l - a wand of undead turning (6:11)",
    {recharges => 6, charges => 11, is_quivered => 0, is_offhand => 0,
     is_wielded => 0},
    "n - a candelabrum (no candles attached)",
    {recharges => undef, charges => undef, candles_attached => 0,
     is_lit => 0, is_quivered => 0, is_offhand => 0, is_wielded => 0},
    "n - a candelabrum (1 candle attached)",
    {recharges => undef, charges => undef, candles_attached => 1,
     is_lit => 0, is_quivered => 0, is_offhand => 0, is_wielded => 0},
    "n - a candelabrum (1 candle, lit)",
    {recharges => undef, charges => undef, candles_attached => 1,
     is_lit => 1, is_quivered => 0, is_offhand => 0, is_wielded => 0},
    "n - a candelabrum (1 candle, lit) (weapon in hand)",
    {recharges => undef, charges => undef, candles_attached => 1,
     is_lit => 1, is_quivered => 0, is_offhand => 0, is_wielded => 1},
    "n - a candelabrum (7 candles, lit) (weapon in hand)",
    {recharges => undef, charges => undef, candles_attached => 7,
     is_lit => 1, is_quivered => 0, is_offhand => 0, is_wielded => 1},
    "j - a cockatrice egg (laid by you) (in quiver)",
    {is_quivered => 1, is_offhand => 0, is_wielded => 0,
     is_laid_by_you => 1},
    "s - a heavy iron ball (chained to you) (alternate weapon; not wielded)",
    {is_quivered => 0, is_offhand => 1, is_wielded => 0,
     is_chained_to_you => 1},
    "w - a +0 set of black dragon scales (embedded in your skin)",
    {is_quivered => 0, is_offhand => 0, is_wielded => 0, is_worn => 1},
    "b - an uncursed +0 cloak of magic resistance (being worn)",
    {is_quivered => 0, is_offhand => 0, is_wielded => 0, is_worn => 1},
    "d - an uncursed ring of warning (on right hand)",
    {is_quivered => 0, is_offhand => 0, is_wielded => 0, is_worn => 1},
    "o - an uncursed amulet of reflection (being worn)",
    {is_quivered => 0, is_offhand => 0, is_wielded => 0, is_worn => 1},
);