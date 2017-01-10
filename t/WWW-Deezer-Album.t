#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 3;
BEGIN { use_ok('WWW::Deezer::Album') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $album = new_ok('WWW::Deezer::Album');

isa_ok ($album, 'WWW::Deezer::Obj');
