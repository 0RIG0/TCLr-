#!/bin/sh
#The next line executes tcl - wherever it is \
#Solution to Advent of Code puzzle for Day 1 (Part 2)\
exec tclsh "$0" "$@"

set input [open "d1p2.txt" r]
close $input

proc part2 {freqs startFreq input} {
  dict set freqs $startFreq 1
    set sum $startFreq	
	foreach line $input {
      	  if {$line != ""} {       
	   set sum [expr {$sum + $line}]
		if {[dict exists $freqs $sum]}{
			return $sum 
	} else { 
    		dict set freqs $sum 1
    
		}
	     }
	}
#set _freq_diffs [regsub "\n" [read_file "d1p2.txt"] ""]
 
tailcall part2 $freqs $sum $input 

}
puts "part2: [part2 {} 0 $input]"
