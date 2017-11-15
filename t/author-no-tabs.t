
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.13

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/MooX/Role/DependsOn.pm',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/author-no-tabs.t',
    't/depends.t',
    't/release-cpan-changes.t',
    't/release-dist-manifest.t',
    't/release-pod-coverage.t',
    't/release-pod-linkcheck.t',
    't/release-pod-syntax.t',
    't/release-synopsis.t',
    't/release-unused-vars.t'
);

notabs_ok($_) foreach @files;
done_testing;
