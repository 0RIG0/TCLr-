#!/bin/sh
#The next line executes tcl - wherever it is \
#Solution to Advent of Code puzzle for Day 1 (Part 2)\
exec tclsh "$0" "$@"

#set input [open "day1.txt" r]
#close $input

proc read_file {_input_file_path} {
    
    set _input [open $_input_file_path r]
    set _data  [read $_input]

    close $_input
    return $_data
}

set _freq_diffs [regsub "\n" [read_file "day1.txt"] ""]

set _mytext "your sum frequency is: "
lappend _mytext [expr $_freq_diffs]
puts $_mytext

#part2 begins

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
 
tailcall part2 $freqs $sum $input 

}
puts "part1: [part1 $input]"
puts "part2: [part2 {} 0 $input]"