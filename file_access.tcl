
proc read_file {_input_file_path} {
    
    set _input [open $_input_file_path r]
    set _data  [read $_input]

    close $_input
    return [split $_data "\n"]
}


proc write_file {_output_file_path _lines} {
    
    set _output [open $_output_file_path w]
    foreach _line $_lines {
	puts $_output $_line
    }

    close $_output
}


proc append_file {_output_file_path _line} {
    
    set _output [open $_output_file_path a]
    puts $_output $_line

    close $_output
}

