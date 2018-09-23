#!/usr/bin/perl
use strict;
use warnings;

# Finding the maximum of a polynomial function using the bisection method
# Author: Frank Jenkins


my $a = 0;
my $b = 1;
my $c = 0;
my $count = 0;
my $err = 0.05;
my $dy;

while ($b - $a >= 0 && abs(deriv($a)) >= $err && abs(deriv($b)) >= $err && $count < 100) {
	$c = ($a + $b)/2;
	
	if(deriv($c) == 0) {
		last;
	}
	elsif(deriv($c) > 0) {
		$a = $c;
	}	
	else {
		$b = $c;
	}
	
	$count = $count + 1;
}
print "The maximum of f(x) =  ", funct($c), "\n";
print "At c =  ", $c, "\n";

print("The total number of iterations is: ", $count);


sub funct {
	my ($x) = @_;
	my $y = -2*$x**6 - 1.6*$x**4 + 12*$x + 1;
	return $y;
	
}

sub deriv {
	my ($x) = @_;
	my $dx = -12*$x**5 - 6.4*$x**3 + 12;
	return $dx;
}

