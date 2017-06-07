function [ Q_array ] = extract_Q(dir_name, file_name )

%given file name, will extract data, as described by Jack
%(1)first data is scanned as lines of string into a cell array from text file
file_cell_array = scan_text_file( dir_name, file_name);

%(2)extract column of required number in string format
string_array=extract_string_column(file_cell_array);

%(3)Convert string array to number array of type double
Q_array = string_to_num_array( string_array );

end

