#!/usr/bin/perl

use strict;
open(INFILE, "dataset.csv");
open(OUTFILE, ">dataset_out.csv");

while(<INFILE>){
  if($_ =~ /,Java,/){
    my @entries = split(",",$_);
    if($entries[9] > 8000 && $entries[9] < 13000){
      printf OUTFILE "$_";
    }
  }
}
