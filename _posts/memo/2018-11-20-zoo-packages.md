---
layout: post
navigation: True
title: fill out the missing value with the nearest previous date.
date: 2018-11-20
tags: [R]
categories: [memo]
comments: true
---


fill out the missing value with the nearest previous date.

~~~ r
library(zoo)
fixtures_sweden$date <- na.locf(fixtures_sweden$date)
~~~


reference:
- [https://markhneedham.com/blog/2015/06/28/r-dplyr-update-rows-with-earlierprevious-rows-values/](https://markhneedham.com/blog/2015/06/28/r-dplyr-update-rows-with-earlierprevious-rows-values/)

- [https://www.rdocumentation.org/packages/zoo/versions/1.7-13/topics/na.locf](https://www.rdocumentation.org/packages/zoo/versions/1.7-13/topics/na.locf)
