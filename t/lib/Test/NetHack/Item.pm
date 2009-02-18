#!/usr/bin/env perl
package Test::NetHack::Item;
our $VERSION = '0.06';

use strict;
use warnings;
use base 'Test::More';
use Test::Exception ();

our @EXPORT = qw/test_items plan_items incorporate_ok evolution_not_ok evolution_ok/;

use NetHack::Item;

sub import_extra {
    Test::More->export_to_level(2);
    Test::Exception->export_to_level(2);
    strict->import;
    warnings->import;
}

sub test_items {
    local $Test::Builder::Level = $Test::Builder::Level + 1;
    my @all_checks = @_;

    while (my ($raw, $checks) = splice @_, 0, 2) {
        # simplification if a lot of tests check exactly the same one thing
        if (main->can('testing_method') && !ref($checks)) {
            $checks = { scalar(main->testing_method) => $checks };
        }

        my $item = ref($raw) ? $raw : eval { NetHack::Item->new($raw) };
        if (!defined($item)) {
            Test::More::diag($@);
            Test::More::fail("Unable to parse '$raw'")
                for keys %$checks;
            next;
        }

        for my $check (sort keys %$checks) {
            if ($item->can($check)) {
                my @values = $item->$check;
                my $value = ref($checks->{$check}) eq 'ARRAY'
                          ? \@values
                          : $values[0];
                Test::More::is_deeply($value, $checks->{$check}, "'$raw' $check");
            }
            else {
                Test::More::fail("'$raw' leaves us without a $check method");
            }
        }
    }
}

sub plan_items {
    my @all_checks = @_;

    my $tests = 0;
    while (my ($item, $checks) = splice @_, 0, 2) {
        $tests += ref($checks) eq 'HASH' ? keys %$checks : 1;
    }

    return $tests if defined wantarray;

    Test::More::plan(tests => $tests);
}

sub incorporate_ok {
    my $before = shift;
    my $after  = shift;
    my $stats  = shift;

    for my $other ($after, NetHack::Item->new($after)) {
        my $item = NetHack::Item->new($before);
        $item->incorporate_stats_from($other);

        local $Test::Builder::Level = $Test::Builder::Level + 1;
        test_items($item, $stats);
    }
}

sub evolution_not_ok {
    local $Test::Builder::Level = $Test::Builder::Level + 1;

    my $old_raw = shift;
    my $new_raw = shift;

    my ($old, $new) = map { NetHack::Item->new($_) } ($old_raw, $new_raw);

    Test::More::ok(!$new->is_evolution_of($old), "$new_raw is not an evolution of $old_raw");

    Test::Exception::throws_ok {
        $old->incorporate_stats_from($new);
    } qr/New item \(\Q$new_raw\E\) does not appear to be an evolution of the old item \(\Q$old_raw\E\)/;
}

sub evolution_ok {
    local $Test::Builder::Level = $Test::Builder::Level + 1;

    my $old_raw = shift;
    my $new_raw = shift;

    my ($old, $new) = map { NetHack::Item->new($_) } ($old_raw, $new_raw);

    Test::More::ok($new->is_evolution_of($old), "$new_raw is an evolution of $old_raw");
}


1;

