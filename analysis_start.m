%%
%set file slash as '\' or '/' depending on whether pc or unix
global fslash;
if (ispc) 
    fslash = '\';
end;
if (isunix) 
    fslash = '/';
end;

%%
%get path for directory which contains analysis folders
global dir_name;
dir_name = which('analysis_start.m');
dir_name = erase(dir_name, '\analysis_start.m');

%%
%add folders to path
%add directory containing analysis and functions to search path
addpath(dir_name);

%%
%