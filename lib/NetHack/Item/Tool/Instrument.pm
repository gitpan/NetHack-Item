#!/usr/bin/env perl
package NetHack::Item::Tool::Instrument;
our $VERSION = '0.04';

use Moose;
extends 'NetHack::Item::Tool';

use constant subtype => 'instrument';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

