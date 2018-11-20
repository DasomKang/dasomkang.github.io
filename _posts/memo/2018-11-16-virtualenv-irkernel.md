---
layout: post
navigation: True
title: virtualenv에 irkernel 설치
date: 2018-11-16
tags: [virtualenv, irkernel]
categories: [memo]
comments: true
---

한동안 이 문제를 해결하느냐고 몇 번 시도하다 말고 그랬는데, 오늘 과제를 하면서 결국 virtualenv에 설치한 jupyter notebook에 R kernel도 등록했다. 역시 사람이 급해야 하게되나보다. 그리고 확실히 작년인가 제작년 시도할 때 보다 구글에 정보가 많아진 느낌이어서 그때보다 수월하게 진행할 수 있었다.
일단 내 상황은,
jupyter를 맥 기본 파이썬에 설치하지 않고, virtualenv에 파이썬 3.6과 등등 여러버전을 설치해 사용하는 중이었다. jupyter notebook도 그래서 가상환경 위에 설치해놓고 사용 중이었다. 지금은 어떻게 설치했는지 기억이 가물가물한데 그때도 좀 애를 먹었긴 했었던 것 같다. 근데 여기에 이제 R 커널도 등록하고 싶어서 기존에 irkernel github에서 설치하라는대로 따라했더니 자꾸 에러가 나는 것이었다.
아직 환경변수며, PATH며 이런 걸 잘 모르기때문에... 그냥 구글검색하면서 stackoverflow를 따라하고 그런다.
아래는 내가 했던 방법.. 참고했던 사이트도 첨부해두었다.
참고로 mac을 이용하고 있다.

---
0. jupyter notebook과 R은 이미 설치가 되어 있다 가정한다.


1. virtualenv 를 먼저 터미널에 실행해둔다.

~~~ shell
dasomiui-MBP:keras_practice dasomi$ pyenv activate keras_practice
~~~

2. R프로그램을 켜서 R의 콘솔 창에 아래 코드를 입력
~~~ R
install.packages('devtools')
devtools::install_github('IRkernel/IRkernel')
~~~
  
3. R 커널을 등록
- 여기서는 다시 mac의 terminal로 돌아가서 아래와 같이 입력한다.
~~~
R # 대문자 R을 입력 시 R이 terminal에서 실행된다.
IRkernel::installspec()
~~~

나는 게속 R을 따로 켜서 **IRkernel::installspec()** 를 시도했는데,
쉬운 방법으로 그냥 terminal에 jupyter가 깔려있는 python 환경에서 R 커널을 등록하면 되는 것이었다. 설명이 이해가 안될 땐 아래 사이트를 참고하면 좋을 듯 하다.


reference:
[설치하면서 참고했던 github 사이트](https://github.com/IRkernel/IRkernel/issues/499)
[IRkernel 공식사이트](https://irkernel.github.io/installation/)
