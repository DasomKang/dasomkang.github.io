---
layout: post
navigation: True
title: Importance Sampling
date: 2018-09-08
tags: [Statistics, sampling]
categories: Archive
comments: true
---

* TOC
{:toc}
### What is Importance sampling?

  Suppose that we want to calculate an expectation of $f(x)$. we can sample from $p(x)$ and compute estimation of $E[f(x)]$.
  However, if it is too hard to directly take samples from $p(x)$, we use arbitrary simple distribution $q(x)$. This $q(x)$, which is Importance Proposal distribution, gets samples easily and its support includes the support of $p(x).$



### How it works



#### Estimation of $E[f(x)]$

$$E[f(x)] = 	\int f(x)p(x)dx, \quad x \sim p(x) $$
$$\hat E [f(x)] = \frac{\sum_{i=1}^nf(x_i)}{n}, \quad x_i \sim_{iid} p(x)$$



**By SLLN(The strong law of large numbers),**

$$ \hat E [f(x)]  \xrightarrow[]{a.s} E[f(x)] \quad \text{ as } n \rightarrow \infty$$





#### Importance sampling

Importance sampling deploys $q(x)$ to generate samples and estimate $E[f(x)]$.





$$
\begin{align}
E[f(x)] & = \int f(x)p(x)dx  \\\\
& = \int f(x) \frac{p(x)}{q(x)}q(x) dx\\\\
& = E \left [ f(x) \frac{p(x)}{q(x)} \right ], \quad x \sim q(x)\\\\
\end{align}
$$



Consequently, we calculate $\hat{E} \left [ f(x) \frac{p(x)}{q(x)} \right ]$ rather than $\hat{E} [ f(x)].$



$$
\begin{align}
\hat{E} \left [ f(x) \frac{p(x)}{q(x)} \right ]  & =  \frac{\sum_{i=1}^nf(x_i) \frac{p(x_i)}{q(x_i)} }{n} \\\\
& = \frac{\sum_{i=1}^nf(x_i)w(x_i)}{n}, \quad x_i \sim q(x_i) \\\\
\end{align}
$$

$$
\text{where} \quad w(x) = \frac{p(x)}{q(x)}\\
$$





we regard this estimation as weighted mean.



### Efficiency

We would like to choose optimal proposal distribution $q(x)$,

$$ min_{q(x)} var_{q(x)}(f(x)w(x))$$

A practical difficulty with importance sampling is that it is not simple to find an optimal $q(x)$.
