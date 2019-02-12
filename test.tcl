#!/bin/sh
#The next line executes tcl - wherever it is \
exec tclsh "$0" "$@"
set fp [open "day1.txt" r]
set input [read $fp]
close $fp

proc part1 {input} {
  return [::tcl::mathop::+ {*}$input]
}

proc part2 {input} {
  dict set freqs 0 1
  set sum $startFreq
  foreach line $input {
    if {$line != ""} {
      set sum [expr {$sum + $line}]
      if {[dict exists $freqs $sum]} {
        return $sum
      } else {
        dict set freqs $sum 1
      }
    }
  }
}
#part2 0 $input 


puts "part 1: [part1 $input]"
puts "part 2: [part2 0 $input]"
