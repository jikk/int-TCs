#!/usr/bin/perl
#input file handler (FH)
open(FH, "../compiler-rt.log") || die "Could not open file\n";
while ($lineno = <FH>) {
	chomp;
	($file, $line, $tab, $msg, $error) = split ':', $lineno;
	$error_msg = substr $error, 1, 28;
	$info = join (':', $file, $line, $tab, $error_msg);
	$info .= "\n"; 
	$warn{$info}++;
}
close(FH);

#output file handler (OFH)
open(OFH, ">new_filtered.log");
foreach $key (sort { $warn{$b} <=> $warn{$a} } keys %warn) {
	printf OFH $warn{$key} . " times: " . $key;
}
close(OFH);
