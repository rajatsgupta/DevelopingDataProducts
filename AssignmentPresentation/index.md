---
title       : Developing Data Products - Assignment Presentation
subtitle    : MT Cars Dataset Analysis
author      : Rajat Shubhra Gupta
job         : 
framework   : io2012                           # {io2012, html5slides, shower, dzslides, ...}
widgets     : [mathjax, quiz, bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained                         # {standalone, draft}
knit        : slidify::knit2slides
---

## Synopsis of the Shiny Application
<hr/>
1. The shiny app will provide the statistical information of the cars present in the MT Cars dataset, especially focussing on the miles per galon variable.
2. An user would be allowed to choose the number of cylinders between(4, 6 and 8) via slider control.
3. An user can also specify the transmission type (Automatic or Manual) which would be captured via a drop down control.
3. The output is rendered in a tabbed layout displaying the summary and the bar plot.

--- .class #id 

## Data Exploration
<hr/>

- Load the MT Cars Data set as soon as the application is requested for the first time.


```r
library(shiny)
data(mtcars)
```


- Depending on the user's choice of the Transmission Type and the number of cylinders, filter the data set.

  For example, assuming the user has chosen the Type of Transmission as Automatic and No of Cylinders as 4; the code to filter the data would be
  

```r
dataset <- mtcars[mtcars[,"am"]==1 & mtcars[,"cyl"]==4,]
```

---

## Data Rendering
<hr/>
- Display the summary of the filtered data, standard deviation and the filtered dataset


```r
summary(dataset$mpg)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##   21.40   25.20   28.85   28.08   30.90   33.90
```

```r
sd(dataset$mpg)
```

```
## [1] 4.48386
```

---

## Plot Rendering 
<hr/>

![plot of chunk unnamed-chunk-5](assets/fig/unnamed-chunk-5-1.png) 

