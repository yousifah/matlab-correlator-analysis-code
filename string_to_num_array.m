function [ num_array ] = string_to_num_array( string_array )
%Input is an array of strings made up of digits and converted to numbers
%output is an array of numbers
num_array = str2double(string_array);
end

