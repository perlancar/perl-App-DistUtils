package App::DistUtils;

# DATE
# VERSION

use 5.010001;

our %dist_arg_single = (
    dist => {
        schema => 'str*',
        req => 1,
        pos => 0,
        completion => sub {
            require Complete::Dist;
            my %args = @_;
            Complete::Dist::complete_dist(word=>$args{word});
        },
    },
);

our %dist_arg_multiple = (
    dist => {
        schema => ['array*', of=>'str*', min_len=>1],
        req => 1,
        pos => 0,
        greedy => 1,
        element_completion => sub {
            require Complete::Dist;
            my %args = @_;
            Complete::Dist::complete_dist(word=>$args{word});
        },
    },
);

1;
# ABSTRACT: Collection of utilities related to Perl distributions

=head1 SYNOPSIS

This distribution provides several command-line utilities related to
Perl distributions.


=head1 SEE ALSO

L<Dist::Util>

=cut
