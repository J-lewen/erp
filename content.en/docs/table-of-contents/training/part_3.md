---
title: 3. Resampling and filtering
weight: 3
bookToc: false
---
<br>

#### Resampling & filtering

Two main concepts are introduced in this sections. Firstly, the idea of resampling. Secondly, offline filtering. - high pass vs low pass

<u> Intro</u>

<u> Video</u>

<u> Code</u>

<u> Script</u>

<u> Dataset</u>

<u> Activity</u>

Have a go at applying the filters both via the UI and with the provided script on Dataset_1. Once you've done this, be sure to read through the Template for ERP Pre-processing Reporting [here) (download)., and have a go at filling in the gaps to report the necessary information about the high-pass filter you've applied to your data.

<u>FAQ</u>

{{% expand "I've heard the terms 'online filter' and 'offline filter'. What do these mean?" %}}
Offline filters refer to pre-processing steps taken subsequent to data acquisition. Online filters are those applied during EEG recording (i.e., by your EEG data acquisition software.).{{% /expand %}}

{{% expand "Can I resample to a different sampling rate?" %}}
For most experiments, a sampling rate of somewhere between 200 - 1000 Hz is ok. Lower sampling rates will mean that your data files are smaller, and processes steps such as ICA run faster. Higher sampling rates make your datasets larger, but give you more fine-grain detail, which can be particularly useful if you want to explore the latency of a response.{{% /expand %}}

{{% expand "How do I choose my filter?" %}}
Filtering is a seemingly simple, but actually incredibly complex element of the pre-processing pipeline. It is important that you have a good understanding of what you're doing to your data, and how you can distort it by using the wrong setting. If you are new to filtering, I *strongly* recommend that you read Steve Luck's chapter *Filtering and Fourier Analysis* in his 2014 book [An Introduction to the Event-Related Potential Technique](https://mitpress.mit.edu/9780262525855/an-introduction-to-the-event-related-potential-technique/).{{% /expand %}}