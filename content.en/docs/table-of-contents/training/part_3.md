---
title: 3. Resampling
weight: 3
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


<u> Video</u>

<u> Code</u>

<u> Script</u>

<u> Dataset</u>

<u> Activity</u>


<u>FAQ</u>

{{% expand "Can I resample to a different sampling rate than 250 Hz?" %}}
For most experiments, a sampling rate of somewhere between 200 - 1000 Hz is ok. Lower sampling rates will mean that your data files are smaller, and processes steps such as ICA run faster. Higher sampling rates make your datasets larger, but give you more fine-grain detail, which can be particularly useful if you want to explore the latency of a response.{{% /expand %}}

