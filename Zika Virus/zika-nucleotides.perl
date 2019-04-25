#!/usr/bin/perl -w
use strict;

# DESCRIPTION : This program reads a fasta file downloaded from the NCBI Web page, 
# stores the sequence without white spaces, and then prints out the number of 
nucleotides in the Zika genome.

# Create file to save Zika sequence
my $filename = "sequence.fasta";

# Open
open(FILE_TO_READ, "<", "$filename")
    or die("Sorry, cannot open $filename : $! ");

# Read
my $sequence;
while (my $line = <FILE_TO_READ>) {
    if($line !~ /^>/){
        chomp($line);
        $sequence = $sequence.$line;
    }
}
print "$sequence \n";

# Count the number of nucleotides
my $length = length($sequence);

# Print out
print "There are $length nucleotides in the $filename file \n";

# Close
close (FILE_TO_READ);