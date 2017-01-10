# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl WWW-Deezer.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More tests => 5;
BEGIN { use_ok('WWW::Deezer') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $deezer = WWW::Deezer->new();

isa_ok( $deezer => 'WWW::Deezer');
can_ok( $deezer, qw/search album artist/ );

my $rs1 = $deezer->search ({ q => 'Antonio Vivaldi Concerto No. 4', order => 'RATING_DESC' });
isa_ok( $rs1 => 'WWW::Deezer::SearchResult' );

# search by passing a HASHREF to query
my $rs2 = $deezer->search ({
    q => {
        artist => 'Spinal Tap',
        album  => 'This Is Spinal Tap',
    }
});

isa_ok( $rs2 => 'WWW::Deezer::SearchResult' );
