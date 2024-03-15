# Intro to Arrow Workshop

by Steph Hazlitt & Nic Crane


### Workshop Website

This repository contains materials for the **Intro to Arrow** workshop.

### Workshop Overview

This workshop will focus on using the arrow R package---a mature R interface to Apache Arrow---to process larger-than-memory files and multi-file datasets with arrow using familiar dplyr syntax. You'll learn to create and use interoperable data file formats like Parquet for efficient data storage and access, and also how to exercise fine control over data types to avoid common large data pipeline problems. This workshop will provide a foundation for using Arrow, giving you access to a powerful suite of tools for performant analysis of larger-than-memory data in R.

*This course is for you if you:*

-   want to learn how to work with tabular data that is too large to fit in memory using existing R and tidyverse syntax implemented in Arrow
-   want to learn about Parquet and other file formats that are powerful alternatives to CSV files
-   want to learn how to engineer your tabular data storage for more performant access and analysis with Apache Arrow

### Workshop Prework

Detailed instructions for software requirements and data sources are shown below.

#### Packages

To install the required core packages for the workshop, run the following:

```{r}
install.packages(c(
  "arrow", "dplyr", "stringr", "lubridate", "tictoc"
))
```
#### Seattle Checkouts by Title Data

This is the data we will use in the workshop. It's a good-sized, single CSV file---*9GB* on-disk in total, which can be downloaded from an AWS S3 bucket via https:

```{r}
options(timeout = 1800)
download.file(
  url = "https://r4ds.s3.us-west-2.amazonaws.com/seattle-library-checkouts.csv",
  destfile = "./data/seattle-library-checkouts.csv"
)
```

#### Tiny Data Option

If you don't have time or disk space to download the 9Gb dataset (and still have disk space to do the exercises), you can run the code in the workshop with "tiny" version of this data. Although the focus in this course is working with larger-than-memory data, you can still learn about the concepts and workflows with smaller data---although note you may not see the same performance improvements that you would get when working with larger data.

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
