---
title: 3. Setting channel locations
weight: 3
bookToc: false
---
<br>

#### Channel locations

<br>
<u>  Intro</u>

So you've got your data open. But the problem is, EEGLAB has no idea which channel is which. At present, all it knows is your channel IDs (names/numbers), and how many you have in total.

<br>
<u> Video</u>



<u> Code </u>

        EEG=pop_chanedit(EEG, 'lookup',[pathtoeeglab '\\plugins\\[CHANNEL ADDRESS]]']);
        
<br>
<u> Script</u>

 [Script #2](/erp/files/script_2.zip) (download).

 [Script #2](/erp/files/script_2.m) (view).

<br>
<u> Dataset</u> 

To run this operation via the user interface, the example data set (used in the above video), along with the channel location file can be downloaded [here](https://drive.google.com/file/d/1PrkYNwCbJSERRryMGRtxWLM2BZLa4OmU/view?usp=share_link).

<br>
<u>Activity</u>

Visit the listed websites and work out which channel location file is appropriate for the EEG system at your institute. .

<br>
<u>FAQs</u>

{{% expand "Why won't my dataset load?" %}}
Ensure that you are attempting to import the correct file type. Remember that the instructions here are for .CNT file types, but the steps themselves transferable across a range of file types.{{% /expand %}}

{{% expand "My dataset isn't in any of the listed formats. What should I do?" %}}
Most data acquisition software offers the ability to convert your file type. For example, I use software that produces a range of files that are incompatible with EEGLAB. However, I am able to save these files in a compatible format within the acquisition software. If you're unsure of how to do this, speak to your EEG technician, researchers around you, or (always a decent resort), Google.{{% /expand %}}

{{% expand "I tried to run the script but it didn't work. Help!" %}}
Ensure you've read the 'Scripts: Essential Information' page, which provides further information on the file and folder structures necessary to run scripts available on this site. Always check that your path to the experiment folder and EEGLAB are correct{{% /expand %}}