---
title: 8. Interpolation
weight: 8
bookToc: false
---
<br>

### Interpolation (or 'oops the eye electrode fell off my participant's face')
<br>

<u> Intro</u>

Whilst taking a look at your data, you may notice that certain electrodes that seem particularly noisy (i.e., fuzzy or making unpredictable leaps and falls). If this is the case, you may wish to interpolate them. Interpolation - put simply - involves recreating one electrode from its surrounding electrodes. As a function in EEGLAB, interpolation is fairly simple to carry out. 

![drift](/erp/images/interpolate.png)

It's easy to see why interpolation is useful. However, let's exemplify the pitfalls of interpolation through an example:

Imagine you are a researcher interested in measuring the N400 response to a target. You collect data from a participant, and note that whilst the data overall is of very good quality, a number of electrodes have broken or lost connection during the testing session. These electrodes are Cz, C2, CP1, CPz, and CP2. 

In theory you could interpolate these electrodes. But you need to think critically about the dataset this would leave you with. There are two problems here. 1. The electrodes that require interpolation are clustered together in a group. This means that rather than rebuilding the signal from immediately surrounding electrodes, any signal that forms part of the reconstructed electrode will need to come from outside of this bad electrode cluster. The more bad electrodes you have in close proximity, the less accurately interpolation can rebuild something close to the true signal that would have been recorded at the electrode site. Problem 2 pertains to your experiment design. If my intention is to measure the N400, the electrodes in my bad cluster are critical. The N400 - as a typically centroparietal component, is typically recorded from central, centroparietal and (sometimes) frontal or parietal sites. If the vast majority of these electrodes bad (i.e., requiring interpolation), you need to consider whether it's reasonable to retain a dataset in your grand average for which 5 integral electrodes have been interpolated. The long and short of it is, use interpolation to your advantage, but make sure the way you use it is reasonable. 

<hr style="height:1px; visibility:hidden;" />
<u> Video</u>
<br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/RFpIix38wZc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<hr style="height:1px; visibility:hidden;" />
<u> Code</u>

       EEG = pop_interp(EEG, [SPECIFY ELECTRODE NUMBER HERE], 'spherical');
           

<hr style="height:1px; visibility:hidden;" />
<u> Script</u>

 [Script #5](/erp/files/script_7.zip) (download).

 [Script #5](/erp/files/script_7.txt) (view).

Note that to run this script you should use [Dataset #7](https://drive.google.com/drive/folders/14ZlXqNKQVOCI1ZDHlCSHqVuea1CQlNMu?usp=sharing). From this step onwards we will use Dataset #7 which has been pre-cleaned (ready for ICA), as opposed to Dataset #1.

<hr style="height:1px; visibility:hidden;" />
<u> Datasets</u>

To run this operation via the user interface, the example dataset (used in the above video) can be downloaded [here](), along with an additional dataset for scripting practice. 

<hr style="height:1px; visibility:hidden;" />
<u> Activity</u>

Have a go at interpolating electrodes manually via the UI, and via the attached scripts. Note that the scripts provided here enables you to run through interpolation for all participants whilst specifying 'bad' electrodes at the beginning of the code. This is because most participants will need different electrodes interpolating, so specifying a given electrode won't work if you want to use the script to pre-process en-mass. 
To practise with the script, enter the electrode that you want to interpolate for a given participant in the curly brackets that follows that participant's ID, e.g.: 

       badchans.participant_01 = {'Cz'}; 

Then note how this creates a 'badchans' list for each participant. See if you can get the script running for the two provided datasets, interpolating whichever electrodes you like.

<hr style="height:1px; visibility:hidden;" />
<u> Write-up </u>

<hr style="height:1px; visibility:hidden;" />
<div class="write-up">

>COMING SOON

</div>

<hr style="height:1px; visibility:hidden;" />
<u>FAQ</u>

{{% expand "What if I am that N400 researcher?" %}}
So you've got a dataset with a number of bad electrodes that are critical to your analysis. First off, silly you. No but seriously - try to fix these things during data acquisition because a 1-2h testing session end up completely wasted if you decide you're done with fixing impedance problems prematurely. But let's assume this is the situation you're in (because we've all been silly at some point). The above scenario is fairly extreme, and in reality your options are fairly limited for retaining the dataset. But if we assume that you've not got 5 crucial electrodes to interpolate, but instead perhaps 3, I would suggest considering a few factors to help inform your decisions. Firstly, how many surrounding electrodes remain, and how close are they in proximity to the original electrode? This will depend on how many electrodes you originally recorded from. For example, trying to interpolate 3 electrodes when you have a 12 electrode cap, vs a 128 is a very different scenario. Secondly, did any of the electrodes lose connection for a brief period, and then regain connection again? If so (see FAQ2) it might be worthwhile leaving the electrode alone. {{% /expand %}}

{{% expand "What if an electrode only goes bad for a short period?" %}}
There's no clear-cut answer to this one. Do you want to lose an experimental block because an electrode has gone awry, or do you want to lose the true signal from that electrode for the entire dataset. Two questions can factor into this though, firstly - how integral the electrode is to the component you're analysing, and secondly - how many trials per condition you can afford to lose? Generally, if the answer two the first question is 'very', I personally would be inclined not to interpolate the electrode in the first instance, and see whether I'm left with a reasonable number of trials if I do so. If, however, the trial count drops below that which would enable you to retain the dataset in your analysis, then interpolation is probably the right route.{{% /expand %}}