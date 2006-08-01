package Acme::Sneeze;

use strict;
our $VERSION = '0.01';

use Exporter::Lite;
our @EXPORT = qw(sneeze);

sub sneeze {
    my $self = shift;
    my $pkg  = caller;
    bless $self, $pkg;
}

1;
__END__

=head1 NAME

Acme::Sneeze - Bless you

=head1 SYNOPSIS

  package Your::Object;
  use Acme::Sneeze;

  package Others;

  my $object = Your::Object->new;
  $object->sneeze;

  print ref($object); # "Others"

=head1 DESCRIPTION

When you sneeze in America (or other English speaking countries),
you'll be blessed. But the problem is that they say "Bless you"
without the 2nd parameter: the package name.

So with Acme::Sneeze, your object will have I<sneeze> method, and when
you sneeze you'll be automatically blessed to the current package.

=head1 AUTHOR

Tatsuhiko Miyagawa E<lt>miyagawa@bulknews.netE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<http://en.wikipedia.org/wiki/Bless_you>

=cut
