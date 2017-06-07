function [ extracted_lines ] = extract_lines( data_cell_array, line_indicator, num_lines)
%Keeps only lines with indicator present
%Scans each line, and assumes indicator appears only once in line
[~, n]=size(data_cell_array);
j=1;
extracted_lines = cell(1,num_lines);
for i=1:n
    if(strfind(data_cell_array{1,i}, line_indicator))
    extracted_lines{1,j}=data_cell_array{1,i};
       if(j==num_lines)
           break;
       end
    j=j+1;
    end
end
end

