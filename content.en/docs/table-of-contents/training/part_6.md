---
title: 6. Cleaning your data & interpolation
weight: 6
bookToc: false
---
<br>

#### Data cleaning (or 'help, my data looks a mess')

<br>
<u> Intro</u>

Preamble: The most important thing to mention here is that there is no substitute for good quality data. You *must* ensure that the data you collect is the best it possible can be, because there is nothing you can do during pre-processing that can compensate for bad data. That said, even the best data will almost always have periods of noise. Why? because participants are only human. Give them a break in a testing session and they will almost inevitably move more than you thought humanly possible in the space of 30 seconds.

So, what should we do, why do we need to clean our data, and what is interpolation? Let's start first with a general walk-through of the data cleaning process.

<u> Video</u>


#### Coming soon


Now you have a more general idea of what cleaning is and how it works, **But** there are some important implications of how you choose to clean your data that you may wish to take into consideration at this stage. Select the scenario that best describes your experiment in order to proceed:

{{% expand "My study does not include a participant response, or I do not care about filtering my data based on response accuracy" %}}

This is possibly the easiest scenario. You can go ahead and clean your dataset as you wish. Try not to remove too many trials unnecessarily (i.e., take into consideration the epoch length so that you don't accidentally cut data too close to the baseline period or end of an epoch and accidentally reject trials).

<u> Dataset</u>

To run this operation via the user interface, the example data set (used in the above video) can be downloaded [here](https://drive.google.com/drive/folders/1VRniyYQoyY5G3HfORFvCXtMWero3NG5O?usp=sharing)
{{% /expand %}}

{{% expand "My study does include a participant response and care about accuracy. The response type is indicated by a trigger in the data" %}}

This is also a good scenario. But now you need to be careful. If you remove a period of interest that contains a response trigger, you will no longer have a response for a given trial. If you decide to remove messy data that falls around a condition trigger or response trigger, be sure to remove both triggers to be on the safe side.

<u> Dataset</u>

To run this operation via the user interface, the example data set (used in the above video) can be downloaded [here](https://drive.google.com/drive/folders/18zOk6T1sNsnfefvYRWWgp-o9ReFzQvU1)

{{% /expand %}}

{{% expand "My study does include a participant response and care about accuracy. The response type is indicated in the corresponding log file" %}}

This is possibly the most complicated scenario. ow you need to be careful. If you remove a period of interest that contains a response trigger, you will no longer have a response for a given trial. If you decide to remove messy data that falls around a condition trigger or response trigger, be sure to remove both triggers to be on the safe side.

<u> Dataset</u>

To run this operation via the user interface, the example data set (used in the above video) can be downloaded [here](https://drive.google.com/drive/folders/18zOk6T1sNsnfefvYRWWgp-o9ReFzQvU1?usp=share_link)

{{% /expand %}}

<br>

Whilst taking a look at your data, you may notice that certain electrodes that seem particularly noisy (i.e., fuzzy or making unpredictable leaps and falls). If this is the case, you may wish to interpolate them.

Interpolation - put simply - involves recreating one electrode from its surrounding electrodes.

<u> Activity</u>

Have a go at cleaning the dataset provided in ERPLAB. Pay close attention to when the triggers fall, and ensure that you don't unnecessarily remove trials by removing data that falls into the baseline period, or epoch of interest. Make sure you save your file at the end of cleaning so as not to lose your changes.

<u>FAQ</u>

{{% expand "Question 1" %}}
Answer 1.{{% /expand %}}

{{% expand "Question 2" %}}
Answer 2.{{% /expand %}}