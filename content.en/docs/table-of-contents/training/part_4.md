---
title: 4. Resampling
weight: 4
bookToc: false
---
<br>

#### Resampling

<br>
<u> Intro</u>

Resampling is a (relatively) simple process that can basically be thought of as deciding how much detail you want to retain in your dataset. Usually, this decision comes down to two things:

1. How important is it for you to measure the precise onset of your effects? 

Typically, I want to know roughly when my effects begin and end. By reducing the sampling rate I lose a little bit of this information, but not a huge amount. For example, by resampling my data down to 250 Hz I introduce an error of ±2 ms. This is fine for the research I do, but if you're interested in super precise comparisons of the onset of an effect for which 2 ms error would be problematic, you'll want to keep your sampling rate higher. However, this brings us to the next consideration...

2. How much space do you have on your computer?

EEG datasets are typically quite big. Usually you need a reasonable number of them. If you want to run two studies that are both about an hour long, with 40 participants for each and to keep you data at a sampling rate of 1000 Hz, you're going to quickly use up a lot of space on your computer. Beyond this, your pre-processing is going to take longer. For simple things such as re-referencing your sampling rate won't make much difference, but for more complex processes such as artifact correction, the increase in time can be quite significant. If you can afford to lose a little bit of temporal resolution, it's usually worthwhile resampling to a lower rate.

Once you've made the decision as to your preferred sampling rate, the process is a relatively quick and simple one, as outlined in the below video.

<br>
<u> Video</u>
<br>

<iframe width="560" height="315" src="https://www.youtube.com/embed/wsPO-mjG6yg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


<u> Code</u>

        EEG = pop_resample( EEG, 250);

<u> Script</u>

 [Script #3](/erp/files/script_3.zip) (download).

 [Script #3](/erp/files/script_3.txt) (view).

 Note that to run this script you should use [Dataset #1](https://drive.google.com/drive/folders/14ZlXqNKQVOCI1ZDHlCSHqVuea1CQlNMu?usp=sharing) in its original .CNT form, as the script runs from the original continuous files (you need a different function to import .fdt and .set EEGLAB files)

<u> Dataset</u>

To run this operation via the user interface, the example data set (used in the above video) can be downloaded [here](https://drive.google.com/drive/folders/1oPFvb4LEVHFkMAHJCvakN1rejq8tBAxH?usp=sharing).

<u> Activity</u>

Have a go at resampling the dataset provided, both via the user interface and using the available script. Finally, save your version of the script to your computer so as to ensure you have an up-to-date script for subsequent tutorial sections (and your own data analysis!).

<u>FAQ</u>

{{% expand "Can I resample to a different sampling rate than 250 Hz?" %}}
For most experiments, a sampling rate of somewhere between 200 - 1000 Hz is ok. Lower sampling rates will mean that your data files are smaller, and processes steps such as ICA run faster. Higher sampling rates make your datasets larger, but give you more fine-grain detail, which can be particularly useful if you want to explore the latency of a response.{{% /expand %}}