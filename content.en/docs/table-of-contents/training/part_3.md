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

#### Coming soon

<u> Code </u>

        EEG=pop_chanedit(EEG, 'lookup',[pathtoeeglab '\\plugins\\[CHANNEL ADDRESS]]']);
        
<br>
<u> Script</u>

 [Script #2](/erp/files/script_2.zip) (download).

 [Script #2](/erp/files/script_2.m) (view).

<br>
<u> Dataset</u> 

To run this operation via the user interface, the example data set (used in the above video), along with the channel location file can be downloaded [here](https://drive.google.com/drive/folders/111SKJ98cS1ZL1PBepT5iDPq3bNbxig-l?usp=share_link).

<br>
<u>Activity</u>

Visit the listed websites and work out which channel location file is appropriate for the EEG system at your institute. .

<br>
<u>FAQs</u>

{{% expand "Question 1" %}}
Answer 1.{{% /expand %}}

{{% expand "Question 2" %}}
Answer 2.{{% /expand %}}

{{% expand "Question 3" %}}
Answer 3.{{% /expand %}}