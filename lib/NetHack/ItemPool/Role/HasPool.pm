package NetHack::ItemPool::Role::HasPool;
BEGIN {
  $NetHack::ItemPool::Role::HasPool::VERSION = '0.13';
}
use Moose::Role;

has pool => (
    is        => 'ro',
    isa       => 'NetHack::ItemPool',
    predicate => 'has_pool',
    weak_ref  => 1,
);

no Moose::Role;

1;

