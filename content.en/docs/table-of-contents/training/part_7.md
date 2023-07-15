---
title: 7. Artifact correction (ICA)
weight: 7
bookToc: false
---
<br>

### Dealing with artifacts - ICA (or 'help, my data looks a mess')

<br>
<u> Intro</u>

Preamble: The most important thing to mention here is that there is no substitute for good quality data. You *must* ensure that the data you collect is the best it possible can be, because there is nothing you can do during pre-processing that can compensate for bad data. That said, even the best data will almost always have periods of noise. Why? because participants are only human. Give them a break in a testing session and they will almost inevitably move more than you thought humanly possible in the space of 30 seconds.

Most of this noise is impossible to deal with. Muscle movements, eye movements coughs and yawns are simply magnitudes larger than the brainwaves we're interested in measuring. Most of this data will therefore have to be rejected (see [11. Artifact rejection](https://j-lewen.github.io/erp/docs/table-of-contents/training/part_11/) for more info). But this will (by definition) reduce the number of trials you have per condition, and trials = power, and with great power comes great papers, or so the old saying goes. 

Enter independent component analysis (ICA), a means 'remove' the blinks from your data. However, there are some down sides (see FAQ), so don't be fooled into thinking that ICA is a magic cure with no repercussions. Nonetheless, done properly, ICA can offer you a means through which blinks can be deal with without losing all of your precious data.

What does ICA do? In overly simplified terms, ICA involves creating a model of vertical (blinks) and horizontal (sideways glances) eye movements for a given participant. The model(s) of these eye movement(s) can then be subtracted out of the data, leaving beautifully clean blink-free EEG. However, it is important to have a solid understanding of the pitfalls of ICA before you subject your data to this technique, so I thoroughly recommend reading around before you charge on in.

**Stage 1: Data cleaning**

So you've decided to go ahead with ICA. The first thing you need to do is clean you data. This is because (assuming you're using your whole dataset for ICA training) you need to help the algorithm to successfully identify blinks as opposed to other sources of noise. Importantly, the number of independent components is (by necessity) always equal to the number of channels in your dataset. Because of this, you don't want a 20 second coughing fit that your participant had half way through the session to 'take up' 15-odd components.

{{% expand "IMPORTANT: do you care about response accuracy?" %}}
Depending on your paradigm you may want to exclude incorrect response trials. If you're lucky, you've programmed this such that your EEG data contains response triggers. If not, you may need to import accuracy from the experimental output file. In this instance, either import this information prior to data cleaning, or be careful not to cut trails during data cleaning, as this will result in a mismatch between your experimental file and EEG data.{{% /expand %}}

<hr style="height:1px; visibility:hidden;" />
<u> Video</u>


#### Coming soon


<hr style="height:1px; visibility:hidden;" />
**Step 2: Running ICA**

Now that you've cleaned the data, you're ready to run ICA. The output from this can be confusing, but there are a number of resources to help you familiarise yourself with the process of identifying occular activity, such as this incredibly helpful [UCSD Tutorial](https://labeling.ucsd.edu/tutorial/labels). 

<hr style="height:1px; visibility:hidden;" />
<u> Video</u>


#### Coming soon

<hr style="height:1px; visibility:hidden;" />
<u> Script</u>

 [Script #5](/erp/files/script_6.zip) (download).

 [Script #5](/erp/files/script_6.txt) (view).

 It's important to note that data cleaning can only be achieved via manual selection of noisy data. This means that from this stage onwards we cannot continue using [Dataset #1](https://drive.google.com/drive/folders/14ZlXqNKQVOCI1ZDHlCSHqVuea1CQlNMu?usp=sharing) as in previous scripts. 

<hr style="height:1px; visibility:hidden;" />
<u> Dataset</u>

To clean your data and run ICA via the user interface, the example data set (used in the above video) can be downloaded [here](https://drive.google.com/drive/folders/1E9bz4FVpZT1i1-JCFP6kNf5EkvltvCP9?usp=sharing)


<hr style="height:1px; visibility:hidden;" />
<u> Write-up </u>

<hr style="height:1px; visibility:hidden;" />
<div class="write-up">

>*Ocular correction was conducted using Independent Component Analysis (ICA)
following visual inspection and cleaning of the data. ICA used the RUNICA algorithm with EOG electrodes excluded, and resulted in an average of [ENTER AVERAGE] components removed per participant [ENTER RANGE]*

</div>
<hr style="height:1px; visibility:hidden;" />
<u> Activity</u>

Have a go at cleaning the dataset provided in ERPLAB. Then, visit the [UCSD ICLabel Tutorial](https://labeling.ucsd.edu/tutorial/practice), where you can practice labelling the source of components based on studying their EEGLAB output.

<hr style="height:1px; visibility:hidden;" />
<u> Write-up </u>


>*EEG data were recorded and digitized at the sampling rate of XXX Hz using a XXX amplifier and subsequently downsampled offline to XXX Hz.*

<hr style="height:1px; visibility:hidden;" />
<u>FAQ</u>

{{% expand "Question 1" %}}
Answer 1.{{% /expand %}}

{{% expand "Question 2" %}}
Answer 2.{{% /expand %}}