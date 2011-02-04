#!/usr/bin/perl

use strict;

my $filename = $ARGV[0];

my $end;

if (open(FILE, $filename)) {
    while (<FILE>) {
        $end = $_ + 0;

        last;
    }

    close FILE;
}

if ($end =~ m{\d+}) {
    my @output;

    for my $n (1 .. $end) {
        if (($n % 7) == 0 && ($n % 3) == 0) {
            push @output, 'Shazoo!';
        }
        elsif (($n % 7) == 0) {
            push @output, 'Muu';
        }
        elsif (($n % 3) == 0) {
            push @output, 'Moo';
        }
    }

    if (@output) {
        print join("\n", @output) . "\n";
    }
}
