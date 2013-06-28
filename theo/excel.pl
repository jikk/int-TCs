#!/opt/local/bin/perl

use Excel::Writer::XLSX;
use File::Basename;

use warnings;


if ($#ARGV != 0) {
	print "Usage: ./excel.pl <file_name>\n";
	exit;
}

my $log_file = $ARGV[0];

#Create Excel File and fields
my $workbook = Excel::Writer::XLSX->new("$log_file.xlsx");
$format = $workbook->add_format();
$format->set_align( 'center' );
$worksheet = $workbook->add_worksheet("$log_file");               
$worksheet->write('A1', 'File');
$worksheet->write('B1', 'Line');
$worksheet->write('C1', 'Colunm');
$worksheet->write('D1', 'Function');
$worksheet->write('E1', 'Type');
$worksheet->write('F1', 'Sub-type');
$worksheet->write('G1', 'Source');
$worksheet->write('H1', 'Sink');
$worksheet->write('I1', 'Times');
$worksheet->write('J1', 'Result');


#process log
open(FH, $log_file) || die "Could not open file $log_file\n";
while ($lineno = <FH>) {
	($times, $file, $line, $column, $type, $result) = split ':', $lineno;
	#check type of bug
	if (index($type, "overflow") != -1) {
		$type = "overflow";
	} elsif (index($type, "conversion") != -1) {
		$type = "conversion";
	} elsif (index($type, "shift") != -1) {
		$type = "shift";
	}
	$info = join (':', $times, $file, $line, $column, $type, $result);
	$info .= "\n"; 
	$warn{$info}++;
}
close(FH);

#output file handler (OFH)
open(OFH2, ">infoapp_$log_file");

#Detailed info for program
$excel_row = 2;
foreach $key (sort { $warn{$b} <=> $warn{$a} } keys %warn) {
	($times, $file, $line, $column, $type, $result) = split ':', $key;
	$shortfile = File::Basename::fileparse($file);
	if ($result == 0) {
		$outline = "  {\" \"" . ",    " . $shortfile . ",    ";
		$outline .= ($type eq "conversion") ? 'true,    ' : 'false,    ';
		$outline .= ($type eq "overflow") ? 'true,    ' : 'false,    ';
		$outline .= ($type eq "shift") ? 'true},' : 'false},';
		print OFH2 $outline . "\n" ;
		$worksheet->write("A$excel_row", "$file");
		$worksheet->write("B$excel_row", "$line");
		$worksheet->write("C$excel_row", "$column");
		$worksheet->write("E$excel_row", "$type");
		$worksheet->write("I$excel_row", "$times");
		$worksheet->write("J$excel_row", "$result");
		$excel_row++;
	}
}
close(OFH2);

