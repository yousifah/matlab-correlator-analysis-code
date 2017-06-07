function [ file_list ] = build_file_list( dir_folder, extension )
%Takes input of directory path and file extension type, and creates a
%string array of names of files in directory, including their extension
%both inputs are strings, and output is a column of string
%IMPORTANT: input of directory folder assumes file slash is not included in
%the end

global fslash;
temp_dir = dir([dir_folder fslash '*.' extension]);
file_list = {temp_dir.name}';
end

