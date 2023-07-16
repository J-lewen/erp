---
title: 6. Re-referencing
weight: 6
bookToc: false
---
<br>

### Re-referencing
<br>

<u> Intro</u>

Re-referencing is one of the simplest pre-processing operations to carry out. The complexities surrounding referencing have far less to do with the operation itself, but instead with your choice of reference itself.

For those new to ERPs, the concept that the the waveform we study actually reflect the *difference* in electrical potentials between one or multiple electrode site(s) and the reference site can be difficult to comprehend <!-- <a> element links to the section below --> <a href="#Section_further_down"> (1)</a>. The electrodes we use to record the neural activity that we're interested in are typically termed the 'active electrodes'. The electrical potential is recorded from active electrodes relative to a theoretically discrete site - the reference, which in an ideal world would be an electrically neutral point. However, in reality, and electrically neutral site is hard to come by, as is explained in quite a bit more detail in [Luck, 2005](http://kutaslab.ucsd.edu/people/kutas/279/pdfs/LuckChapter3.pdf) than I can possibly strive to achieve here. In short, the electrode must be on the body of the person we want to record from, and there is no site on the body that is neutral.

In the absence of an electrically neutral site, researchers have resorted to all manner of electrode locations. However, it is important here to make the distinction between online and offline references.
When you record EEG data within your lab, you will most likely do so using whichever reference site the lab tends to use. This might be the left mastoid (the bony protrusion behind the ear), Cz, the tip of the nose, an electrode simply labelled 'CMS' (common Mode Sense). It is unlikely that you will make any changes to a pre-established lab set-up, and thus will use whatever **online** reference is at your disposal during data acquisition.

However, you're not stuck with this reference. Having collected the data you can now amend your reference site(s) to any or all of the channels you've recorded from. Across ERP literature, an enormous amount of variation exists in chosen reference sites, resulting in [reproducibility and comparability issues](https://www.researchgate.net/publication/338018989_Which_Reference_Should_We_Use_for_EEG_and_ERP_practice). Because of this, it's important to carefully consider the reference site that best serves your research (see FAQ: How do I choose my offline reference?).

Perhaps the two most commonly adopted schemes are the mastoid reference, and average reference. There are various arguments for/against either - to briefly sum, there is no unanimous consensus on the best reference scheme to use, although most ERP researchers agree that it would be better for the field at large if we didn't all use different ones. For this reason, for the purposes of this tutorial we will use the average mastoid<!-- <a> element links to the section below --> <a href="#Section_further_down"> (2)</a>.

<hr style="height:1px; visibility:hidden;" />
<u> Video</u>

**Coming soon**

<hr style="height:1px; visibility:hidden;" />
<u> Code</u>

      EEG = pop_reref( EEG, [REFERENCE CHANNEL/CHANNELS] );

<hr style="height:1px; visibility:hidden;" />
<u> Script</u>

 [Script #5](/erp/files/script_5.zip) (download).

 [Script #5](/erp/files/script_5.m) (view).

<hr style="height:1px; visibility:hidden;" />
<u> Dataset</u>

To run this operation via the user interface, the example data set (used in the above video) can be downloaded [here]()

<hr style="height:1px; visibility:hidden;" />
<u> Activity</u>

Search for literature on your topic and check which reference site is most typically used. Have a go at re-referencing to the average mastoid and global average using the UI. Then try running this via the script/ Finally, save your version of the script to your computer so as to ensure you have an up-to-date script for subsequent tutorial sections (and your own data analysis!).

As a sidenote, after Step 12 - Averaging, or Step 14 - Grand Averaging, you may wish to play around with your chosen reference to see what this does to your waveforms.

<hr style="height:1px; visibility:hidden;" />
<u> Write-up </u>

<hr style="height:1px; visibility:hidden;" />
<div class="write-up">

>Data were recording with the left mastoid as the online reference, and subsequently re-referenced offline for analysis to the average of the left and right mastoid electrodes.<!-- <a> element links to the section below --> <a href="#Section_further_down"> (3)</a>

</div>

<hr style="height:1px; visibility:hidden;" />
<u>FAQ</u> 

{{% expand "How do I choose my offline reference?" %}}
Choosing your reference is not always a clearcut decision. Unlike certain pre-processing operations, for which there is often a clear answer (e.g., 'don't choose a high-pass filter cut-off above 0.1Hz unless you have a very good reason to'), choosing the right reference for you often depends on the study you're running. A couple of key factors to take into consideration are: **(1)** What has the field done before? You typically want to ensure your findings are comparable to similar papers/previous literature, so you might be inclined to choose the same reference as the vast majority of papers you cite; **(2)** Where is the effect of interest? If you are interested in an effect that occurs predominantly over central electrodes, you probably don't want a central-only reference site (as this will most likely subtract a lot of the signal you're interested in from the data); and **(3)** How many electrodes have you got to play with? Typically, using the global average as your reference works better if you have greater coverage of the scalp (e.g., a 128 electrode cap, as opposed to an 8 electrode cap).{{% /expand %}}

{{% expand "Does it matter if I choose to change my reference later?" %}}
No. Referencing is a linear operation (see [this page](https://erpinfo.org/order-of-steps) for a very helpful overview of linear and non-linear pre-processing steps). What this effectively means for your is that it is fairly unproblematic to re-reference at any stage, and as many times as you like.{{% /expand %}}

<br>

##### <u>Footnotes</u>

<h5 id="Section_further_down">

(1) See [this summary](https://neuraldatascience.io/7-eeg/erp_rereferencing.html) for a superb introduction to the concept if the second paragraph above has you perplexed.

(2) One of the big drawbacks of the average reference is that you might mistakenly be lead to think that effects reported by studies using the average reference are comparable. This is not always the case. A study that has recorded data from 32 electrode sites will have a very different average reference to a study that recorded with 128 electrodes, or with a different electrode layout.

(3) If an average reference is used, it is important to make it clear to the reader which electrodes were included in any such average.