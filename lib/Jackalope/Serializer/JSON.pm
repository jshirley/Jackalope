package Jackalope::Serializer::JSON;
use Moose;

our $VERSION   = '0.01';
our $AUTHORITY = 'cpan:STEVAN';

use Jackalope::Util;

with 'Jackalope::Serializer';

sub content_type { 'application/json' };

sub serialize {
    my ($self, $data, $params) = @_;

    $params = { %{ $self->default_params }, %{ $params || {} } }
        if $self->has_default_params;

    encode_json( $data, $params );
}

sub deserialize {
    my ($self, $json, $params) = @_;

    $params = { %{ $self->default_params }, %{ $params || {} } }
        if $self->has_default_params;

    decode_json( $json, $params );
}

__PACKAGE__->meta->make_immutable;

no Moose; 1;

__END__

=pod

=head1 NAME

Jackalope::Serializer::JSON - A Moosey solution to this problem

=head1 SYNOPSIS

  use Jackalope::Serializer::JSON;

=head1 DESCRIPTION

=head1 METHODS

=over 4

=item B<>

=back

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 AUTHOR

Stevan Little E<lt>stevan.little@iinteractive.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2010 Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
