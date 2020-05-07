#!/usr/bin/perl
use File::Copy qw(copy);
use strict;

open(INFILE, "$ARGV[0]");
my $class_name = "$ARGV[1]";
my $outfile = "$class_name.java";
open(OUTFILE, ">$outfile");

# Print the header to the JUnit test file
print OUTFILE "package game.framework;\n";
print OUTFILE "\n";
print OUTFILE "import org.junit.jupiter.api.Test;\n";
print OUTFILE "\n";
print OUTFILE "class $class_name {\n";

# Parse the .tsl file to create all the unit tests
my $first_test = 1;
my $testnum = 0;
while(<INFILE>){
	my @entry = split(" ",$_);
	if($entry[0] eq "Test"){
		my $testnum = "$entry[0]$entry[1]$entry[2]";
		my @keys = split("\\.", $entry[5]);
		print OUTFILE "    \@Test\n";
		print OUTFILE "    void $testnum() {\n";

		# Create enough vectors to perform the action
		for(my $i = 1; $i <= $keys[1]; $i++){
			print OUTFILE "        Vector2 vec$i = new Vector2(".int(rand(0xffff)).",".int(rand(0xffff)).");\n";
		}

		# Setup the values to the call the function with
		my $values;
		if($keys[2] == 1){ # min
			if($keys[3] == 1){
				$values = "0";
			}
			else{
				$values = "0,0";
			}
		}
		elsif($keys[2] == 2){ # max
			if($keys[3] == 1){
				$values = int(rand(0xffff));
			}
			else{
				$values = int(rand(0xffff)).",".int(rand(0xffff));
			}
		}
		elsif($keys[2] == 3){ # rand
			if($keys[3] == 1){ # single value
				$values = int(rand(0xffff));
			}
			else{ # two values
				$values = int(rand(0xffff)).",".int(rand(0xffff));
			}
		}

		# Print the function call
		if($keys[0] == 1){ # Add
			print OUTFILE "        System.out.println(vec1.add($values));\n";
		}
		elsif($keys[0] == 2){ #AddX
			print OUTFILE "        System.out.println(vec1.addX($values));\n";
		}
		elsif($keys[0] == 3){ #AddY
			print OUTFILE "        System.out.println(vec1.addY($values));\n";
		}
		elsif($keys[0] == 4){ #BaryCentric
			print OUTFILE "        System.out.println(vec1.barycentric(vec1,vec2,vec3,$values));\n";
		}
		elsif($keys[0] == 5){ #Clamp
			print OUTFILE "        System.out.println(vec1.clamp(vec1,vec2,vec3));\n";
		}
		elsif($keys[0] == 6){ #Divide
			print OUTFILE "        System.out.println(vec1.divide($values));\n";
		}
		elsif($keys[0] == 7){ #dotProduct
			print OUTFILE "        System.out.println(vec1.dotProduct(vec2));\n";
		}
		print OUTFILE "    }\n";
	}
}
close(INFILE);
#print last test
print OUTFILE "}\n";
close(OUTFILE);
