#!/usr/bin/perl
#input file handler (FH)
open(FH, "/home/tm/phase2/compiler-rt.log") || die "Could not open file\n";
while (<FH>) {
	$warn{$_}++;
}
close(FH);

#output file handler (OFH)
open(OFH, ">filtered.log");
foreach $key (sort { $warn{$b} <=> $warn{$a} } keys %warn) {
	printf OFH $warn{$key} . " times: " . $key;
}
close(OFH);
