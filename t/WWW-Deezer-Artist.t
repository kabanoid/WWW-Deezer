#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Data::Dumper;

use Test::More tests => 8;
BEGIN { use_ok('WWW::Deezer::Artist') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $artist = new_ok('WWW::Deezer::Artist');
isa_ok ($artist, 'WWW::Deezer::Obj');

$artist = new_ok('WWW::Deezer::Artist' => [744]);

can_ok ($artist, qw/name radio deezer_obj nb_fan/);

ok ($artist->name eq 'Nina Simone', 'Artist created correctly');

ok (! ref $artist->radio, 'Artist radio flag has correct (simple) type');

isa_ok ($artist->deezer_obj, 'WWW::Deezer', 'Artist object deezer_obj reference');
