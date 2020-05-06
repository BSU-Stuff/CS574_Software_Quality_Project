#!/usr/bin/perl
use File::Copy qw(copy);
use strict;

open(INFILE, "$ARGV[0]");
my $class_name = "$ARGV[1]";
my $outfile = "$class_name.java";
open(OUTFILE, ">$outfile");

# Print the header to the JUnit test file
print OUTFILE "package it.pdfsam.console;\n";
print OUTFILE "\n";
print OUTFILE "import org.junit.jupiter.api.Test;\n";
print OUTFILE "\n";
print OUTFILE "class $class_name {\n";

# Parse the .tsl file to create all the unit tests
my $first_test = 1;
my $testnum = 0;
my @input_files;
my $compression;
my $copyfields;
my @log_output;
my @ranges;
my $input_filetype;
my $input_file_count;
my $singleton;
while(<INFILE>){
	my @entry = split(" ",$_);
	if($entry[0] eq "Test"){
		if($first_test){ $first_test = 0; }
		else{
			print OUTFILE "	\@Test\n";
			print OUTFILE "	void $testnum() {\n";
			print OUTFILE "		String[] args = {";

			print OUTFILE "\"-o\",\"../output/$class_name\_$testnum.pdf\",";
			print OUTFILE "\"-overwrite\",";
			print OUTFILE "\"concat\"};\n";
			print OUTFILE "		runWithArgs(args, \"Test $class_name $testnum\");\n";
			print OUTFILE "	}\n";
		}
	}
}
close(INFILE);
#print last test
print OUTFILE "	\@Test\n";
print OUTFILE "	void $testnum() {\n";

print OUTFILE "	}\n";

# Print the end of the JUnit test file
print OUTFILE "	//test case, redirects standard out to a PrintWriter\n";
print OUTFILE "	public void runWithArgs(String[] args, String out) {\n";
print OUTFILE "		try {\n";
print OUTFILE "			MainConsole mc = new MainConsole();\n";
print OUTFILE "			System.out.println(mc.mainAction(args, false));\n";
print OUTFILE "		} catch (Exception e) {\n";
print OUTFILE "			System.out.println(out);\n";
print OUTFILE "		}\n";
print OUTFILE "	}\n";
print OUTFILE "}\n";
close(OUTFILE);

# Now just copy it over to your package location and execute in Eclipse
copy($outfile,"src/it/pdfsam/console/$outfile");
