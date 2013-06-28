#!/usr/bin/perl

if ($#ARGV != 0) {
	print "Usage: ./filter.pl <file_name>\n";
	exit;
}

my $xform_file = $ARGV[0];

#input file handler (FH)
open(FH, $xform_file) || die "Could not open file\n";
while ($lineno = <FH>) {
	chomp;
	($xform, $result, $type, $file, $info) = split ':', $lineno;
	($field1, $field2) = split(/,/, $info);
	if ($field1 =~ /(\d+)/) {
		$line = $1;
	}
	if ($field2 =~ /(\d+)/) {
		$column = $1;
	}
	$info = join (':', $file, $line, $column, $type, $result);
	$info .= "\n"; 
	print $info;
	$xform{$info}++;
}
close(FH);

#output file handler (OFH)
open(OFH, ">$xform_file" . "_filtered");
foreach $key (sort { $xform{$b} <=> $xform{$a} } keys %xform) {
	printf OFH $xform{$key} . " times: " . $key;
}
close(OFH);
