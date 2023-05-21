%%% Cleans up the workspace - useful to run in case you have any leftovers
%%% from previous MATLAB activity.
clear all

%%% Where the data are stored (see 'Scripts: essential information' for more details). 
% e.g., pathtodata = 'C:\Users\Jen\EEG training\Experiment 1\';
pathtodata = '[ENTER YOUR PATH HERE]';

%%% Where EEGLAB is stored
% e.g., pathtoeeglab = 'C:\Users\Jen\MATLAB\eeglab2021.1';
pathtoeeglab = '[ENTER YOUR PATH HERE]';

%%% Adds the paths
addpath(pathtodata);
addpath(pathtoeeglab);

%%% List your participants. Each participant should have a new line, with
%%% the structure badchans.[dataset name] = { };
%%% e.g., badchans.[Dataset_1] = { };
badchans.[ENTER YOUR DATASET NAME HERE];

%%% tells MATLAB what the subject (dataset) names are
subjects = fieldnames(badchans)';

% This just figures out whether we're going to need backslash or
% forwardslash delimiters (i.e., whether we're using pc or unix)
if ismember(1, arrayfun( @(x)(strcmp('\',x)), pathtodata))
    path_delimiter = '\';
else
    path_delimiter = '/';
end;