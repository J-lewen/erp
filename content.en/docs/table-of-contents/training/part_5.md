---
title: 5. High-pass filtering
weight: 5
bookToc: false
---
<br>

### High-pass filtering

 <br>

<u> Intro</u>

Filtering is a complex process, and requires some thought and consideration. It's important that you read around on some literature on filtering to understand what you are doing to your data, and the consequences of inappropriate filtering (particularly see [this paper](https://www.researchgate.net/publication/273405257_How_inappropriate_high-pass_filters_can_produce_artifactual_effects_and_incorrect_conclusions_in_ERP_studies_of_language_and_cognition) for a fantastic overview of the issue). 
High-pass filtering - the type of filter that allows the **higher** amplitudes to pass through but cuts out the lower amplitudes - is a really important early step in your pre-processing pipeline. But high-pass filtering can also cause substantial distortions of your data. So why do it?

![drift](/erp/images/drift.png)

As you record EEG from a participant, you will often notice slow drifts in voltage that occur over time. These can be quite dramatic (as in the picture above) or occur very steadily. These drifts are caused by changes in the conductivity of the skin, which are fairly unavoidable - apart from ensuring your participants don't sweat excessively (see 'What if I have really sweaty participants?' below). High pass filtering predominantly serves to reduce these slow drifts, although will not eliminate them completely.

As with all the other pre-processing steps, you will see plenty of examples in the literature of high-pass filtering done badly. But it is also not to be naive of the fact that **all filters will distort your data**. Because of this, it's crucial to select your filter carefully. If you take nothing else away from this tutorial, remember that:

* High-pass filtering should always be done on continuous data to avoid edge artifacts <!-- <a> element links to the section below --> <a href="#Section_further_down"> (1)</a>
* In most instances, a high-pass filter with a 0.1Hz cut-off (half-amplitude) or *lower* should be used;
* Choosing your roll-off slope <a href="#Section_further_down"> (2)</a> is equally as important and selecting the right cut-off;
* Filtering is almost always underreported. Don't be an underreporter.

<hr style="height:1px; visibility:hidden;" />
<u> Video</u>


#### Coming soon

<hr style="height:1px; visibility:hidden;" />
<u> Code</u>

        EEG  = pop_basicfilter( EEG,  [1:NUMBER OF ELECTRODES] , 'Boundary', 'boundary', 'Cutoff',  0.1, 'Design', 'butter', 'Filter', 'highpass', 'Order',  2 ); 

<hr style="height:1px; visibility:hidden;" />
<u> Script</u>

 [Script #4](/erp/files/script_4.zip) (download).

 [Script #4](/erp/files/script_4.txt) (view).

Note that to run this script you should use [Dataset #1](https://drive.google.com/drive/folders/14ZlXqNKQVOCI1ZDHlCSHqVuea1CQlNMu?usp=sharing) in its original .CNT form, as the script runs from the original continuous files (you need a different function to import .fdt and .set EEGLAB files)

<hr style="height:1px; visibility:hidden;" />
<u> Dataset</u>

To run this operation via the user interface, the example data set (used in the above video) can be downloaded [here](https://drive.google.com/drive/folders/1xNZs1Nm2bBqcFb9iIWOAxmgH1shKU3wj?usp=sharing)

<hr style="height:1px; visibility:hidden;" />
<u> Activity</u>

Have a go at applying the filters both via the UI and with the provided script on Dataset_1. Play around with different filter settings and have a look at what different roll-off and cut-off thresholds do to the data. Finally, save your version of the script to your computer so as to ensure you have an up-to-date script for subsequent tutorial sections (and your own data analysis!).

<hr style="height:1px; visibility:hidden;" />
<u> Write-up </u>

<hr style="height:1px; visibility:hidden;" />
<div class="write-up">

>Continuous data was high-pass filtered offline, using an IIR Butterworth filter (2nd order) with a half-amplitude cut-off frequency of 0.1Hz and a and 12 dB/octave roll-off.
</div>

<hr style="height:1px; visibility:hidden;" />
<u>FAQ</u>

{{% expand "I've heard the terms 'online filter' and 'offline filter'. What do these mean?" %}}
Offline filters refer to pre-processing steps taken subsequent to data acquisition. Online filters are those applied during EEG recording (i.e., by your EEG data acquisition software.).{{% /expand %}}

{{% expand "Can I use a different half-amplitude cut-off or slope?" %}}
Yes, but be careful with what you're doing, and be sure to read the recommended resources in "What else should I know about filtering" below. For a High-pass filter, you can use anything from 0.01 to 0.1 Hz (half-amplitude). A higher cut-off is better for datasets with more artifacts, whilst if your data is pretty clean you might want to sway closer to 0.05 or 0.01 Hz.{{% /expand %}}

{{% expand "What else should I know about filtering?" %}}
Filtering is a seemingly simple, but actually incredibly complex element of the pre-processing pipeline. It is important that you have a good understanding of what you're doing to your data, and how you can distort it by using the wrong setting. If you are new to filtering, I *strongly* recommend that you read Steve Luck's chapter *Filtering and Fourier Analysis* in his 2014 book [An Introduction to the Event-Related Potential Technique](https://mitpress.mit.edu/9780262525855/an-introduction-to-the-event-related-potential-technique/).{{% /expand %}}

{{% expand "What if I have really sweaty participants?" %}}
Ultimately, the quality of the data you collect will dictate the quality of the data in your study. What I mean by this is, although all of the processes outlined in this tutorial can improve things somewhat, if you start with really cruddy data, you'll still finish with really cruddy data. So, what can you do to prevent tonnes of slow drift in your data? First, you want to make sure that your participants are kept as cool as possible. If you have air conditioning in your EEG lab, turn this on before participants arrive and (if possible) between study blocks. Make sure that before you start the capping process your participants take off coats and jumpers (particularly hoodies or items of clothing that will be difficult to take off once they have an EEG cap on their head, even if the do get too hot). Offer your participants water to drink during the session. Finally - and often overlooked - ensure your participants are as relaxed as they can be. Never underestimate the importance of relaxed participants for good data quality. Participants who are tense, stressed, worried about the task, or uncomfortable with the process will sweat more, have tenser shoulder and neck muscles, and overall perform worse on any task you set them. It is completely within you control to make sure participants understand what's happening, don't feel immense pressure to perform perfectly, and feel comfortable to ask questions. This is something I've so often seen stressed undergrad and MA students overlook, fixated on getting through the sheer quantity of data acquisition they have to complete. But trust me, you (and your participants) will thank yourself for taking the time to keep them happy. {{% /expand %}}

<br>


##### <u>Footnotes</u>

##### (1) High-pass filters use involve computations that require a couple of seconds of data to operate correctly. If you apply the filter to your epoched data, you stand a chance of introducing artifacts at the beginning and end of your epoch

<!-- Heading to link to -->

<h5 id="Section_further_down">(2) When you set a cut-off frequency (e.g., 0.1Hz), the power at this frequency does not immediately drop to 0. Instead, there is a gradual reduction of power over a range of frequencies as specified by the roll-off. Changing this roll-off changes show sharply the filter cuts off power at these frequencies, and higher roll-offs (i.e., 24db/oct, 48db/oct) are sharper in terms of the power cut-off than lower roll-offs (e.g., 12dB/oct). Very sharp roll-offs can cause artifacts, so if you're unsure of what you're doing here, it's safest to 1. go through the recommended reading above, and 2. stick to a softer roll-off (e.g., 12dB/oct). </h2>



