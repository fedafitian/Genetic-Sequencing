#!/usr/bin/perl -w
use strict;

# DESCRIPTION : Keyboard inputs, check if substring
# This program asks the user to enter two DNA sequences from the keyboard and determines 
# if the second sequence is a substring of the first string.


# Create variable to store keyboard input
my $first_input;
print "Please enter a DNA sequence : ";

# Get the keyboard input (Standard Input)
$first_input = <STDIN>;

# Eliminate the blank spaces at the ends of the line
chomp($first_input);
# print "Your DNA sequence is\t : $first_input \n";

# Create variable to store 2nd shorter keyboard input
my $second_input;
print "Please enter another DNA sequence that is shorter than the first : ";
$second_input = <STDIN>;
chomp($second_input);
# print "Your second DNA sequence is\t : $second_input \n";

# Calculate the lengths
my $first_input_length;
$first_input_length = length($first_input);
my $second_input_length;
$second_input_length = length($second_input);

# Check if second output is shorter than first
if($second_input_length > $first_input_length){
    print "Sorry, second DNA sequence MUST be shorter than first sequence in ",
        "order for me to run this program", "\n";
}

# Second string is shorter, see if its a substring
elsif($first_input =~ /\Q$second_input\E/){
    print "...processing please wait \n";
    print qq(Yes,"$first_input" contains "$second_input" as a substring! \n);
}

else{
    print "...processing please wait \n";
    print qq(Sorry,"$first_input" DOESN’T contain "$second_input" as a substring
            \n)
}