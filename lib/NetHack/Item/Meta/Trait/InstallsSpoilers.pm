package NetHack::Item::Meta::Trait::InstallsSpoilers;
{
  $NetHack::Item::Meta::Trait::InstallsSpoilers::VERSION = '0.19';
}
use Moose::Role;

sub install_spoilers {
    my $class = shift;

    for my $spoiler (@_) {
        $class->add_method($spoiler => sub {
            return shift->collapse_spoiler_value($spoiler);
        });
    }
}

no Moose::Role;

1;

