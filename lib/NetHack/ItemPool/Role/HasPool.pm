package NetHack::ItemPool::Role::HasPool;
our $VERSION = '0.10';

use Moose::Role;

has pool => (
    is        => 'ro',
    isa       => 'NetHack::ItemPool',
    predicate => 'has_pool',
    weak_ref  => 1,
);

no Moose::Role;

1;

