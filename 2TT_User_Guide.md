---
title: "2TT User Guild"
author: "Yu-Li Chang"
date: "October 24, 2015"
output: pdf_document
---

**This is a step-by-step user guide for 2TT - A Shiny App for 2-Sample t-Test. A sample data file is provided. User can use it and follow this guide to familiarize 2TT.**

![alt text](http://i.imgur.com/QPqmDnv.png)

Fig. 1 Notice that under the "Show Data Summary" a message `[1] "Waiting for data.". This indicates 2TT is waiting for user to load the data file.

Please notice that all user need to do are on the side panel. See Fig. 1.

#User Step-By-Step User Guide

##Step 0 - Data File Format
Download the provided sample file "2TT.csv". User should open this file and inspect its format. This is the format user will use when creating data files in the future. The 2TT data file consists of only 2 columns. The first column contains the names of the factors. There can be more than 2 factors. The second column contains the numeric data associated with the factors.

##Step 1 - Load File into 2TT
Click **Browse...** under **Choose the File** to choose the data file to load.

##Step 2 - Data File Header
Check **Header** box if the data file has headers.

##Step 3 - Data File Column Separator
Click the radio botton under **Separator** to specify how columns of the data file are separated.

##Step 4 - Data File Quote
Click the radio botton under **Quote** to specify which type of quote (or if there's any) is used in the data file.

##Step 5 - Specify Factors to Run 2-Sample t-Test
In the input box under**Which one is the first variable?**, click the downward triangle to open the pull-down manu. Select the first factor from it. 

After that, in the input box under**Which one is the second variable?**, click the downward triangle to open the pull-down manu. Select the second factor from it.

##Step 6 - Variances Assumption
Click the radio botton under **Are the variances of two samples the same?** to specify your assumption.

At this moment 2TT should look lie the following figure:

![alt text](http://i.imgur.com/qkuGiuk.png)

Fig. 2 Notice that under the "Show Data Summary" a brief summary of the data file is shown.

##Step 7 - Visual Comparison - Box Plot
Click **Box Plot** tab to see the box plot result (Fig. 3).

![alt text](http://i.imgur.com/7CZlSz2.png)

Fig. 3 2TT presents a visual comparison for the two samples to user inside the "Box Plot".

##Step 8 - More Detail of t-Test Result
Click **t-Test Summary** tab to see the detail summary of the 2-sample t-Test (Fig. 4). 

![alt text](http://i.imgur.com/iXRNiuP.png)

Fig. 4 2TT gives user more detail of the t-Test result in the "t-Test Summary" tab.

#Final Note
If you follow the **Step-By-Step User Guild** up to this point, then you should be very familiar to how it works now. Users are encouraged to start utalize 2TT with their own data file, following the same format of the sample file. Any suggestion or question? Please feel free to contact our technical support at techsupport@2TT.com.

