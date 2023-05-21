---
title: 3. Setting channel locations
weight: 3
bookToc: false
---
<br>

#### Channel locations

<br>
<u>  Intro</u>

So you've got your data open. But the problem is, EEGLAB has no idea which channel is which. At present, all it knows is your channel IDs (names/numbers) if you're lucky.
The next step is to tell EEGLAB where these channels belong in relation to one another by using a location file. Luckily, the creators of EEGLAB have provided a channel file which features a database of 385 defined channel labels. As long as your data was imported into EEGLAB with these labels (which most systems do!) than taking your locations from this file should typically work well.

<br>
<u> Video</u>
<br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/NXORaHENLDw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<u> Code </u>

        EEG=pop_chanedit(EEG, 'lookup',[pathtoeeglab '\\plugins\\[CHANNEL ADDRESS]]']);
        
<br>
<u> Script</u>

 [Script #2](/erp/files/script_2.zip) (download).

 [Script #2](/erp/files/script_2.txt) (view).

<br>
<u> Dataset</u> 

To run this operation via the user interface, the example data set (used in the above video), along with the channel location file can be downloaded [here](https://drive.google.com/drive/folders/1Ebn1h7aeWH4Z5a194HsZIIaVyHfK6Jqa?usp=sharing).

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