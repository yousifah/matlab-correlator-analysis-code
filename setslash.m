function [ slash_out ] = setslash()
%checks if pc or unix, and sets '/' or '\' accordingly
if (ispc) 
    slash_out = '\';
else
    if (isunix)
        slash_out = '/';
    end
end