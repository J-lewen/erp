---
title: 3. Setting channel locations
weight: 3
bookToc: false
---
<br>

### Channel locations

<br>
<u>  Intro</u>

So you've got your data open. But the problem is, EEGLAB has no idea which channel goes where. At present, all it knows is your channel IDs (names/numbers) if you're lucky.
So your next step is to tell EEGLAB where these channels belong in relation to one another by using a location file. Luckily, the creators of EEGLAB have provided a channel file which features a database of 385 defined channel labels. As long as your data was imported into EEGLAB with these labels (which most systems do) then sourcing your channel locations from this file should typically work well.

<hr style="height:1px; visibility:hidden;" />
<u> Video</u>
<br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/NXORaHENLDw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<hr style="height:1px; visibility:hidden;" />
<u> Code </u>

        EEG=pop_chanedit(EEG, 'lookup',[pathtoeeglab '\\plugins\\[CHANNEL ADDRESS]]']);
        
<hr style="height:1px; visibility:hidden;" />
<u> Script</u>

 [Script #2](/erp/files/script_2.zip) (download).

 [Script #2](/erp/files/script_2.txt) (view).

<hr style="height:1px; visibility:hidden;" />
<u> Dataset</u> 

To run this operation via the user interface, the example data set (used in the above video), along with the channel location file can be downloaded [here](https://drive.google.com/drive/folders/1Ebn1h7aeWH4Z5a194HsZIIaVyHfK6Jqa?usp=sharing).

<hr style="height:1px; visibility:hidden;" />
<u>Activity</u>

Have a go at setting channel locations for your dataset using both the UI and the scripts provided. 

<hr style="height:1px; visibility:hidden;" />
<u>FAQs</u>

{{% expand "How do I delete a channel?" %}}
Firstly, have a think. Why might you want to do this? Perhaps your EEG system has recorded a channel that wasn't intended (i.e., EKG), or you selected a layout during data recording for one participant that includes electrodes not present in your other datasets (making it difficult to grand average across datasets with different numbers of channels at a later stage). Most of the time it is not necessary to manually remove a channel unless there is a discrepancy between the number of channels present across datasets. However, if this is the ase, simply selecting 'delete channel' on the edit channel info menu will not remove the channel from a dataset. Instead, you should go to Edit>Select data>Channel range, and by ticking the 'remove these' checkbox can select any channels you wish to remove.

[![](/erp/images/removechannel.png)](/erp/images/removechannel.png)
