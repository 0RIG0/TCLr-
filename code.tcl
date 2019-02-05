#!/bin/sh
#The next line executes tcl - wherever it is \
exec tclsh "$0" "$@"

proc read_file {_input_file_path} {
    
    set _input [open $_input_file_path r]
    set _data  [read $_input]

    close $_input
    return $_data
}

set _freq_diffs [regsub "\n" [read_file "d1p2.txt"] ""]

set _mytext "your sum frequency is: "
lappend _mytext [expr $_freq_diffs]
puts $_mytext


#puts  [expr $_freq_diffs] 







