#!/usr/bin/perl -w
# Copyright (C) 200, 2001  Bradley M. Kuhn
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program (in the file, "COPYING"; if not, write to the Free
#    Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
#    02111-1307 USA


use strict;
use warnings;

my $type = $ARGV[0];

unless (defined $type) {
  print STDERR "usage: $0 TYPE\n";
  exit 1;
}
my $extraType;

if ($type eq "PS" || $type eq "HTML") {
  $extraType = "PS_HTML";
}

while (my $line = <STDIN>) {
  if ($line =~ /^\s*%+\s*FILTER[_\s]+$type\s*:\s+(.*)\s*$/) {
    $line = "$1\n";
  }
  if (defined $extraType and
      $line =~ /^\s*%+\s*FILTER[_\s]+$extraType\s*:\s+(.*)\s*$/) {
    $line = "$1\n";
  }
  print $line;
}
