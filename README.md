# Introduction to Arrow in R Workshop

by Steph Hazlitt & Nic Crane

This repository contains materials for the **Introduction to Arrow in R** \~2-hour workshop delivered to RLadies Ottawa (10 April 2024).

Slides: <https://tinyurl.com/arrowrladiesottowa/>

### Workshop Overview

This workshop will focus on using the arrow R package&mdash;a mature R interface to Apache Arrow&mdash;to process larger-than-memory files and multi-file datasets with arrow using familiar dplyr syntax. You'll learn to create and use the interoperable data file format Parquet for efficient data storage and access. This workshop will provide a foundation for using Arrow, giving you access to a powerful suite of tools for performant analysis of larger-than-memory data in R.

### Workshop Prework

Detailed instructions for software requirements and data sources are shown below.

#### 1. (Optional) Set up a new project in RStudio

Set up a new project in RStudio using this workshop, so you have a copy of the slides and code.

<img src="images/newproj.png" width="447"/>

Repository URL: <https://github.com/thisisnic/introtoarrowworkshoprladiesottowa>

#### 2. Install Required Packages

To install the required core packages for the workshop, run the following:

```{r}
install.packages(c("arrow", "dplyr"))
```

**Please note - macOS users only**: at time of writing (2nd April 2024), the version of arrow which can be installed from CRAN doesn't have all the features enabled. Instead please install from an alternative repo such as R Universe:

```{r}
install.packages('arrow', repos = c('https://apache.r-universe.dev'))
```

#### 3 (Option a). Seattle Checkouts by Title Data

This is the data we will use in the workshop. It's a good-sized, single CSV file&mdash;*9GB* on-disk in total, which can be downloaded from an AWS S3 bucket via https:

```{r}
options(timeout = 1800)
download.file(
  url = "https://r4ds.s3.us-west-2.amazonaws.com/seattle-library-checkouts.csv",
  destfile = "./data/seattle-library-checkouts.csv"
)
```

#### 3 (Option b). Tiny Data Option

If you don't have time or disk space to download the 9Gb dataset (and still have disk space to do the exercises), you can run the code in the workshop with "tiny" version of this data. Although the focus in this course is working with larger-than-memory data, you can still learn about the concepts and workflows with smaller data&mdash;although note you may not see the same performance improvements that you would get when working with larger data.

```{r}
options(timeout = 1800)
download.file(
  url = "https://github.com/posit-conf-2023/arrow/releases/download/v0.1.0/seattle-library-checkouts-tiny.csv",
  destfile = "./data/seattle-library-checkouts-tiny.csv"
)
```

If you want to participate in the coding exercise or follow along, please try your very best to begin the workshop ready with the required software & packages installed and the data downloaded on to your laptop.

------------------------------------------------------------------------

![](https://i.creativecommons.org/l/by/4.0/88x31.png) This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).
