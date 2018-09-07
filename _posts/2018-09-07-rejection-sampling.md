---
layout: post
cover: 'assets/images/cover6.jpg'
navigation: True
title: Rejection Sampling
date: 2017-09-07 13:10:00
tags: Sampling
subclass: 'post tag-test'
logo: 'assets/images/ghost.png'
author: dasom
categories: Sampling
use_math: true
---

  

   



## What is rejection sampling?

Rejection sampling (also known as acceptance-rejection sampling) is a basic algorithm used to generate observations from a distribution $p(x)$. It is useful when we want to sample from a distribution $p(x)$, but the $p(x)$ is too complicated to sample directly.
To implement this algorithm, it is essential to have information regarding the pdf(probability density function) of the target distribution $p(x)$.

  

## How it works

The main idea of rejection sampling is that another simple $q(x)$ is considered, and from that we can easily and directly draw samples. This is called proposal distribution. It is better to choose what is a well-known and closed form of a target distribution.   

  

![image1](https://i.imgur.com/KLv0qCy.png)



Instead of a target distribution, generate samples from proposal distribution $q(x)$, and apply a rejection/acception criterion.
The criterion and algorithm are both described below.  

  

  

### Process

Overall, we need two distributions :   
1. Target distribution $p(x)$ : A distribution that we want to sample from.    
2. Proposal distribution $q(x)$ : A defined distribution that it is easy to sample from.  

And one restriction is  

1. $p(x) \leq Mq(x), \quad M < \infty $ , M is positive constant  


The rejection sampling proceeds as follow :     
1. Set $i = 1$  
2. Until $i = n, $    
      (1) Sample $x_i  \sim q(x) \quad $ and $ u \sim Uniform(0,1).$      
      (2) If $u <  \frac{p(x)}{Mq(x)}, \quad $ then accept $x_i$ and $i = i + 1.$   
      Otherwise, reject  $x_i$    

  

  

## The limitations of rejection sampling

The main problem with rejection sampling is setting an appropriate $M$.  
It is not always possible to bound  $\frac{p(x)}{q(x)}$ with a reasonable constant $M$ over the whole domain $\mathcal{X}$. And besides, if an $M$ is too large, the acceptance probability[^1] will be too small and many samples will likely be rejected.  
$$ P(Acceptance) = p( u< \frac{p(x)}{Mq(x)} ) = \frac{1}{M}.$$  
It is especially impractical when $p(x)$ is a distribution over a high-dimensional set, something which generally requires a large $M$.



[^1]: proof  $$P(Acceptance) = p( u< \frac{p(x)}{Mq(x)} )$$  : 

