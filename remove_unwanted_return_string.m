function [ string_array ] = remove_unwanted_return_string( extract_lines, string_unwanted_part )
%assumes input is cell array containing lines with string components to
%remove
%Converts cell array to string array
%removes unwanted string parts, assuming input is in the form:
%[string('abc') string('def')
%...] etc.
string_array = string(extract_lines);
n=length(string_array);
for i=1:n
string_array(i) = erase(string_array(i),string_unwanted_part);
end

