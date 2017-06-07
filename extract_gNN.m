function [ gNN_array ] = extract_gNN(dir_name, file_name )
tic

%given file name, will extract data, as described by Jack
%(1)first data is scanned as lines of string into a cell array from text file
file_cell_array = scan_text_file( dir_name, file_name);

%(2)The gNN relevant part is extracted from this:
start_chopped = extract_start( file_cell_array, '<baryon_num>17</baryon_num>');
end_chopped =extract_end(start_chopped, '<sink_mom_num>1</sink_mom_num>');

%(3)Relevant lines are extracted based on an indicator
%There are 64 lines based on conversation with Jack
relevant_lines = extract_lines( end_chopped, '<re>', 64);

%(4)Remove unwanted substrings from strings in each line
%Converts cell array to string array
relevant_string_array = remove_unwanted_return_string( relevant_lines, [string('<re>') string('</re>')] );

%(5)Convert string array to number array of type doulbe
gNN_array = string_to_num_array( relevant_string_array );

toc
end


