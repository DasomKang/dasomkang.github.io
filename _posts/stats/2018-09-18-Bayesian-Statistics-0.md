---
layout: post
navigation: True
title: Bayesian Statistics 0
date: 2018-09-08
tags: [Bayesian, Statistics]
categories: summary
comments: true
---

* TOC
{:toc}


## 들어가면서

이 블로그의 개설 목적은 공부했던 통계 이론들과 분석 기법들을 제가 이해했던 흐름대로 정리하여 언제든 다시 꺼내서 볼 수 있도록 하기 위한 것임을 다시한 번 말씀드립니다. 저는 먼저 큰 그림을 머릿속에 확실히 잡고 세부적으로 들어가는 방법을 선호하는지라, 아마 앞으로의 글들도 그런 순서로 작성될 것 같습니다. 즉 한 번에 완성된 글 한 편이 올라오는 것이 아니라, 개념을 먼저 정리한 후 시간이 날 때 마다 수식이나 내용을 채워넣는 방식으로 지속적으로 업데이트할 예정이라는 것을 알려드려야할 것 같아 미리 말씀을 드립니다. (혹시라도 누가 와서 보실까봐..)





## Bayesian Statistics를 시작하기 전에

 - **Prerequisites**

   - Regression Analysis, Mathematical Statistics, Statistical Inference
   - 최소한 확률분포(Binomial, Poisson, normal distribution…), 결합확률분포, 주변확률분포 (joint, marginal distribution), 조건부확률분포정도는 알고 있어야 이해하는데 시간을 줄일 수 있다.

- **통계적 추론에 대한 두가지 입장(Frequentist, Bayesian)**

  - 우리가 parameters(모수)들을 추론하려고 할 때, Frequentist와 Bayesian, 두 가지의 접근 방식이 있다.

  - 우리는 여기서 Bayesian을 살펴보려고 한다. 깔끔하게 한 문장으로 두 입장의 차이를 비교해보자면,

    - Frequentist : parameters are fixed
    - Bayesian : parameters are **not** fixed

    라고 할 수 있다. 좀 더 풀어서 설명하자면, Bayesian은 우리가 추정하려는 parameter가 불확실한 값이어서 어떤 확률분포를 따른다고 보는 것이다.

  - 그러므로 Frequentist는 관측된 자료에 대한 모형만을 사용하여 모형이 가지는 parameter를 추정하는 것이고, Bayesian은 관측된 자료에 대한 모형과 parameter의 확률분포를 모두 이용하여 parameter를 추정하는 것이다. 결국 Bayesian은 자료에서 얻을 수 있는 정보와 사전 지식, 주관적인 견해를 고려하여 parameter의 분포를 잡고 추론을 실시한다.
  - 또한 Frequentist는 현재 주어진 관측값과 실험을 무한히 반복할 경우 얻을 수 있는 모든 가능한 관측값을 고려하며, 베이지안은 현재 주어진 관측값만을 고려한다.

- Bayes' Theorem

  - 추후 수식 추가

## TOPIC

정리할 주제는 다음과 같은 순서이다.

1. Introduction to the Bayesian Paradigm

2. one - parameter Models

3. two parameter Models

4. Estimation and Hypothesis Testing

5. Hierarchical Models (empirical, Heirarchical)

6. Bayesian Computation

7. Model Diagnostics
