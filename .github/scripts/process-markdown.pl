#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $file = shift @ARGV or die "missing file path\n";

local $/ = undef;
open my $fh, '<:encoding(UTF-8)', $file or die "cannot open $file: $!\n";
my $text = <$fh>;
close $fh;

my ($fm, $body) = ('', $text);
if ($text =~ /\A---\s*(.*?)\s*---\s*(.*)\z/s) {
  ($fm, $body) = ($1, $2);
}

print "\n---\nSource file: $file\n---\n";

my %field_labels = (
  title        => 'Title',
  summary      => 'Summary',
  date         => 'Date',
  tags         => 'Tags',
  externalUrl  => 'ExternalUrl',
  external_url => 'ExternalUrl',
);

for my $key (qw(title summary date tags externalUrl external_url)) {
  next unless $fm =~ /(?:^|\n)\Q$key\E\s*:\s*(.+?)(?:\n|$)/i;
  my $value = $1;
  $value =~ s/^\s+|\s+$//g;
  $value =~ s/^['"]|['"]$//g;
  print $field_labels{$key} . ": $value\n" if defined $value && $value ne '';
}

$body =~ s/<style\b[^>]*>.*?<\/style>//gis;
$body =~ s/<!--.*?-->//gs;
$body =~ s/```[\s\S]*?```//g;
$body =~ s/<[^>]+>//g;
$body =~ s/\r//g;
$body =~ s/[ \t]+$//mg;
$body =~ s/\n{3,}/\n\n/g;
$body =~ s/^\s+|\s+$//g;
$body =~ s/^#+\s*//mg;

print "$body\n" if $body ne '';