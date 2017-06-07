function [ string_array ] = extract_string_column( cell_array )
%Uses built-in matlab split function
%input is an array of strings 
%first we convert to an array of strings
%then split function splits the array into a matrix depending on where
%there are spaces in the srings
%Finally, the wanted column of strings is extracted
string_matrix=split(cell_array);
string_array = string_matrix(:,2);
end

