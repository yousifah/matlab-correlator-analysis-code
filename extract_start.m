function [ extract_file_start ] = extract_start( file_cell_array, start_indicator)
%extracts cell array starting from line start_indicator
%assumes inputi is 1 by n
[n, ~]=size(file_cell_array);
for i=1:n
    if(strcmp(file_cell_array{i,1}, start_indicator))
    break;
    end
end
extract_file_start = {file_cell_array{i:n}};
end

