function [ extract_file_end ] = extract_end( file_cell_array, end_indicator )
%Assumes input is coming from extract_start
%Finds line end indicator and extracts from start to indicator
[~, n]=size(file_cell_array);
for i=1:n
    if(strcmp(file_cell_array{1,i}, end_indicator))
    break;
    end
end
extract_file_end = {file_cell_array{1,1:i}};
end

