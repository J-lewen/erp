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
%%% e.g., badchans.[Dataset_filtering] = { };
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
        
        %Import channel locations
        %Note: Make sure you change the path and file name.
        %e.g., EEG=pop_chanedit(EEG, 'lookup',[pathtoeeglab '\\plugins\\dipfit\\standard_BESA\\standard-10-5-cap385.elp']);
        EEG=pop_chanedit(EEG, 'lookup',[pathtoeeglab '[ENTER YOUR PATH & FILE HERE']);
        [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
        EEG = eeg_checkset( EEG );
        
        %Resample
        %%% here '250' refers to our new sampling rate. If you want to use a different sampling rate, change this number.
        EEG = pop_resample( EEG, 250);
    
        %High-pass filter
        %%% The filter works as follows: 
        %%% EEG  = pop_basicfilter( EEG,  [HOW MANY ELECTODES - ie. 1:67, OR 1:34],
        %%% 'Boundary', 'boundary', 'Cutoff',  [THE HALF-AMP CUT-OFF YOU WANT, i.e. 0.01, OR 0.1], 
        %%% 'Design', '[WHICH TYPE OF FILTER]', 'Filter', '[HIGHPASS OR LOWPASS]', 'Order',  [FILTER ORDER] ); 
        EEG  = pop_basicfilter( EEG,  1:67 , 'Boundary', 'boundary', 'Cutoff',  0.1, 'Design', 'butter', 'Filter', 'highpass', 'Order',  2 ); 
       
        
end;

%%% IMPORTANT: Again, it will seem like nothing exciting has happened here. 
%%% But if you want to check it has worked, you can save the dataset by
%%% using the following code, and check its sampling rate:
%%% EEG = eeg_checkset( EEG );
%%% EEG = pop_saveset( EEG, 'filename','(FILENAME HERE).set','filepath','[ADDRESS ON YOUR COMPUTER HERE]');
%%% [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);

