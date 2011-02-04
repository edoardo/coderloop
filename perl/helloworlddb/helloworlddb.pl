#!/usr/bin/perl

use strict;

use DBI ();

my ($username, $password, $dbname) = @ARGV;

my $dbh = DBI->connect(
    "DBI:mysql:database=$dbname;host=localhost;port=3306",
    $username, $password,
);

my $rows = $dbh->selectall_arrayref('SELECT text FROM hello_data ORDER BY id ASC');

print $rows->[0]->[0] . ' ' . $rows->[1]->[0] . "\n";
