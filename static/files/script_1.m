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

%%%% New content

%%% the below line tells EEGLAB to conduct the following steps for all
%%% datasets, from 1 to whatever length 'subjects' (our dataset list) is.
for n = 1:length(subjects)
    
    subject = subjects{n}

        %%% Open EEGLAB
        eeglab
        
        %Read Data
        EEG = pop_loadcnt([pathtodata subject '\' subject '.cnt'] , 'dataformat', 'auto', 'memmapfile', '');
        EEG.setname = subject;
        [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'setname',subject,'gui','off'); 
        EEG = eeg_checkset( EEG );
        
        EEG = eeg_checkset( EEG );
        EEG = pop_resample( EEG, 250);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'setname','Dataset_1_250','gui','off'); 
EEG  = pop_basicfilter( EEG,  1:68 , 'Boundary', 'boundary', 'Cutoff',  0.1, 'Design', 'butter', 'Filter', 'highpass', 'Order',  2 ); % GUI: 18-Feb-2023 09:58:12
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
        
    
end;

%%% IMPORTANT: it will seem like nothing exciting has happened here. 
%%% But if in your workspace you now see the structures such as 'subjects' 
%%% and 'badchans', then this has worked.
