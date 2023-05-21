---
title: 5. High-pass filtering
weight: 5
bookToc: false
---
<br>

#### High-pass filtering


<u> Intro</u>

Filtering is a complex process, and requires some thought and consideration. It's important that you read the literature on filtering to understand what you are doing to your data, and the consequences of inappropriate filtering.

<u> Video</u>


#### Coming soon


<u> Code</u>

        EEG  = pop_basicfilter( EEG,  [1:NUMBER OF ELECTRODES] , 'Boundary', 'boundary', 'Cutoff',  0.1, 'Design', 'butter', 'Filter', 'highpass', 'Order',  2 ); 

<u> Script</u>

 [Script #4](/erp/files/script_4.zip) (download).

 [Script #4](/erp/files/script_4.txt) (view).

Note that to run this script you should use [Dataset #1](https://drive.google.com/drive/folders/14ZlXqNKQVOCI1ZDHlCSHqVuea1CQlNMu?usp=sharing) in its original .CNT form, as the script runs from the original continuous files (you need a different function to import .fdt and .set EEGLAB files)


<u> Dataset</u>

To run this operation via the user interface, the example data set (used in the above video) can be downloaded [here](https://drive.google.com/drive/folders/1xNZs1Nm2bBqcFb9iIWOAxmgH1shKU3wj?usp=sharing)

<u> Activity</u>

Have a go at applying the filters both via the UI and with the provided script on Dataset_1. Play around with different filter settings and have a look at what different slops and thresholds do to the data.
Once you've done this, be sure to read through the Template for ERP Pre-processing Reporting [here](https://j-lewen.github.io/erp/docs/table-of-contents/researcher_resource/) (download), and try to fill in the gaps to report the necessary information about the high-pass filter you've applied to your data. Finally, save your version of the script to your computer so as to ensure you have an up-to-date script for subsequent tutorial sections (and your own data analysis!).

<u>FAQ</u>

{{% expand "I've heard the terms 'online filter' and 'offline filter'. What do these mean?" %}}
Offline filters refer to pre-processing steps taken subsequent to data acquisition. Online filters are those applied during EEG recording (i.e., by your EEG data acquisition software.).{{% /expand %}}

{{% expand "Can I use a different half-amplitude cut-off?" %}}
Yes, but be careful with what you're doing, and be sure to read the recommended resources in "What should I know about filtering" below. For a High-pass filter, you can use anything from 0.01 to 0.1 Hz (half-amplitude). A higher cut-off is better for datasets with more muscle artifacts, whilst if your data is pretty clean you might want to sway closer to 0.05 or 0.01 Hz.{{% /expand %}}

{{% expand "What should I know about filtering?" %}}
Filtering is a seemingly simple, but actually incredibly complex element of the pre-processing pipeline. It is important that you have a good understanding of what you're doing to your data, and how you can distort it by using the wrong setting. If you are new to filtering, I *strongly* recommend that you read Steve Luck's chapter *Filtering and Fourier Analysis* in his 2014 book [An Introduction to the Event-Related Potential Technique](https://mitpress.mit.edu/9780262525855/an-introduction-to-the-event-related-potential-technique/).{{% /expand %}}