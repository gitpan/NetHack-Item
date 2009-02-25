package NetHack::Item::Meta::Types;
our $VERSION = '0.07';


=head1 NAME

NetHack::Item::Meta::Types - NetHack::Item-specific types

=head1 VERSION

version 0.07

=cut

use Moose::Util::TypeConstraints;

enum 'NetHack::Item::Slot' => qw(left_ring right_ring gloves amulet helmet
    shield weapon offhand quiver boots cloak bodyarmor shirt blindfold);

1;