---
title: 2. Importing data
weight: 2
bookToc: false
---
<br>

### Importing data (or *'help, how do I get started?'*)

<br>
<u>  Intro</u>

Now you've got ERPLAB up and running, it's time to have a look at some data! But how do you get your data into ERPLAB in the first place? Take a look at the video below for a brief guide to the process of importing your data.

<hr style="height:1px; visibility:hidden;" />
<u> Video</u>
<br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/nsI2O7Y-fUo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<hr style="height:1px; visibility:hidden;" />
<u> Code </u>

        EEG = pop_loadcnt('C:\[DATASET ADDRESS]\[DATASET NAME].cnt' , 'dataformat', 'auto', 'memmapfile', '');      
        [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'setname','[DATASET NAME FOR ERPLAB]','gui','off'); 
        
<hr style="height:1px; visibility:hidden;" />
<u> Script</u> 

 [Script #1](/erp/files/script_1.zip) (download).

 [Script #1](/erp/files/script_1.txt) (view).

<hr style="height:1px; visibility:hidden;" />
<u> Dataset</u> 

To run this operation via the user interface, the example data set (used in the above video) can be downloaded [here](https://drive.google.com/drive/folders/14ZlXqNKQVOCI1ZDHlCSHqVuea1CQlNMu?usp=sharing).

<hr style="height:1px; visibility:hidden;" />
<u>Activity</u>

Have a go at importing Dataset #1 into EEGLAB using both the user interface and script methods. For the script method, try saving Dataset_1 (e.g., Dataset_1, Data_set2) with a different name, and see if you can import multiple datasets using the Script 1. Finally, save your version of the script (with all the amended folder paths) to your computer so as to ensure you have a working script for subsequent tutorial sections (and your own data analysis!).

<hr style="height:1px; visibility:hidden;" />
<u>FAQs</u>

{{% expand "Why won't my dataset load?" %}}
Ensure that you are attempting to import the correct file type. Remember that the instructions here are for .CNT file types, but the steps themselves transferable across a range of file types.{{% /expand %}}

{{% expand "My dataset isn't in any of the listed formats. What should I do?" %}}
Most data acquisition software offers the ability to convert your file type. For example, I use software that produces a range of files that are incompatible with EEGLAB. However, I am able to save these files in a compatible format within the acquisition software. If you're unsure of how to do this, speak to your EEG technician, researchers around you, or (always a decent resort), Google.{{% /expand %}}

{{% expand "I tried to run the script but it didn't work. Help!" %}}
Ensure you've read the [Scripts: Essential information](https://j-lewen.github.io/erp/docs/scripts/) page, which provides further information on the file and folder structures necessary to run scripts available on this site. Always check that your path to the experiment folder and EEGLAB are correct{{% /expand %}}