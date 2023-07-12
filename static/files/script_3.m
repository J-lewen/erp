%Pre-content

%%% The content below - everything preceeding Section 1, should be run first.
%%% This is the case irrespective of whether you're planning to run Section
%%% 1 or Section 2. To run any concent in this script, you can either
%%% choose 'Run Section' in the menu on the far right, or you can hold down
%%% control and press enter.

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
badchans.Dataset_1 = {};

%%% tells MATLAB what the subject (dataset) names are
subjects = fieldnames(badchans)';

% This just figures out whether we're going to need backslash or
% forwardslash delimiters (i.e., whether we're using pc or unix)
if ismember(1, arrayfun( @(x)(strcmp('\',x)), pathtodata))
    path_delimiter = '\';
else
    path_delimiter = '/';
end;

%% Section 1

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
        %%% Note: as long as you've specified your path to EEGLAB correctly above,
        %%% the channel location file should be found.
        EEG=pop_chanedit(EEG, 'lookup',[pathtoeeglab '\\functions\\supportfiles\\Standard-10-5-Cap385.sfp']);
        [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);

%%% NEW CONTENT
           
        %Resample
        %%% here '250' refers to our new sampling rate. If you want to use a different sampling rate, change this number.
        EEG = pop_resample( EEG, 250);  

        %Save the dataset
        EEG = pop_saveset( EEG, 'filename',[subject '_script3.set'],'filepath',[pathtodata '\' subject '\']);
        [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
        ALLEEG = pop_delset( ALLEEG, [1] );
        
end;

