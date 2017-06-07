function [ output_cell_array] = scan_text_file( dir_name, file_name)
%Will open text file and scan each line into a cell in a cell array
%for a file that is m lines long, the output is a cell array that is m by 1

global fslash; 
fid = fopen([dir_name fslash file_name]);
output_cell_array = textscan(fid, '%s', 'delimiter', '\n');
output_cell_array = output_cell_array{1,1};
fclose(fid);
end

