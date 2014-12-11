package App::DistUtils;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Dist::Util ();

our $_complete_dist = sub {
    require Complete::Util;

    my %args = @_;

    my $word = $args{word} // '';
    $word =~ s!/|::!-!g;
    Complete::Util::complete_array_elem(
        word=>$word,
        array=>[Dist::Util::list_dists()],
        ci=>1,
    );
};

1;
# ABSTRACT: Collection of utilities related to Perl distributions

=head1 SYNOPSIS

This distribution provides several command-line utilities related to
Perl distributions.


=head1 SEE ALSO

L<Dist::Util>

=cut
