package NetHack::Item::Meta::Trait::IncorporatesUndef;
BEGIN {
  $NetHack::Item::Meta::Trait::IncorporatesUndef::VERSION = '0.13';
}
use Moose::Role;
Moose::Util::meta_attribute_alias 'IncorporatesUndef';

1;

