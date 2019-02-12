#!/bin/sh
#The next line executes tcl - wherever it is \
#Solution to Advent of Code puzzle for Day 1 (Part 2)\
exec tclsh "$0" "$@"

set file [open "day1.txt" r]
set _input [read $file]
close $file


proc part1 {_input} {
    return [::tcl::mathop::+ {*}$_input]
}

proc part2 {freqs startFreq _input} {
	dict set freqs $startFreq 1
	set sum $startFreq

foreach line $_input {
	
	if {$line != ""} {
	
	set sum [expr {$sum + $line}] 
 if {[dict exists $freqs $sum]} {
        return $sum
   } else {
        dict set freqs $sum 1
      }
    }
  }
   part2 $freqs $sum $_input
}

puts "The answer to part 1 is: [part1 $_input]"
puts " The answer to part 2 is: [part2 {} 0 $_input]"
