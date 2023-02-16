---
title: 4. High-pass filtering
weight: 4
bookToc: false
---
<br>

#### High-pass filtering


<u> Intro</u>

Filtering is a complex process, and requires some thought and consideration. It's important that you read the literature on filtering to understand what you are doing to your data, and the consequences of inappropriate filtering.

<u> Video</u>

<u> Code</u>

<u> Script</u>

<u> Dataset</u>

<u> Activity</u>

Have a go at applying the filters both via the UI and with the provided script on Dataset_1. Once you've done this, be sure to read through the Template for ERP Pre-processing Reporting [here](https://j-lewen.github.io/erp/docs/table-of-contents/researcher_resource/) (download)., and have a go at filling in the gaps to report the necessary information about the high-pass filter you've applied to your data.

<u>FAQ</u>

{{% expand "I've heard the terms 'online filter' and 'offline filter'. What do these mean?" %}}
Offline filters refer to pre-processing steps taken subsequent to data acquisition. Online filters are those applied during EEG recording (i.e., by your EEG data acquisition software.).{{% /expand %}}

{{% expand "How do I choose my filter?" %}}
Filtering is a seemingly simple, but actually incredibly complex element of the pre-processing pipeline. It is important that you have a good understanding of what you're doing to your data, and how you can distort it by using the wrong setting. If you are new to filtering, I *strongly* recommend that you read Steve Luck's chapter *Filtering and Fourier Analysis* in his 2014 book [An Introduction to the Event-Related Potential Technique](https://mitpress.mit.edu/9780262525855/an-introduction-to-the-event-related-potential-technique/).{{% /expand %}}