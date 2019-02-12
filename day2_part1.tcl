#!/bin/sh
# the next line restarts using tclsh \
exec tclsh "$0" "$@"

if {false} {
	To make sure you didn't miss any, you scan the 
	likely candidate boxes again, counting the number that have an
	ID containing exactly two of any letter and then separately counting 
	those with exactly three of any letter. You can multiply those two 
	counts together to get a rudimentary
	checksum and compare it to what your device predicts.
}

set _file [open "day2.txt" r]
set _input [read $_file]
close $_file
# Match the first substring with lowercase letters only
#
join $_input ","
#set result [regexp {[A-Za-z]+} $_input match] ;#all letters (uppercase and lowercase)
#puts "Result: $result match: $match" ;# prints out Result: 1 match: fzostwblnqkhpuzxirnevmaycq

puts [expr {[llength [split $_input "a"]] - 1}] ;#prints out that there are 252 a's
puts "there are :[expr {[llength [split $_input "a"]] - 1}] number of a'ss in the box ids"
#puts "first occurance of $s2 in $_input"
#puts [string first  $s2 $_input] ;#prints out at index 22 line 1
#want to find ALL occurances of a in my text file
