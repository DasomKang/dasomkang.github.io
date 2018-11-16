---
layout: post
title: data.table() in r
date: 2018-11-11
categories: memo
tags: [r]
comments: true
---

~~~ r
DT[, .N] # return the number of rows

DT[, .(V2,V3)] # return V2 and V3 as a data.table

DT[, .SD[c(1,N)], by =V2] # select the first and last row group by V2

# calulate sum of columns in .SD group by V2
DT[,lapply(.SD, sum), by=V2]

DT[,lapply(.SD, sum), by=V2, SDcols=c("V3","V4")]


~~~
