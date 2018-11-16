---
layout: post
title: apply() in r
date: 2018-11-11
tags: [r]
categories: [memo]
comments: true
---
### apply() in r
for, while문보다 짧은 코드로 반복 연산을 처리하기에 유용함. 데이터의 종류, 출력 결과물, 연산 단위에 맞춰 적당한 함수를 사용한다. apply계열의 함수로는
- apply
- lapply
- sapply
- vapply

 등등이 있고, 사용할 때 마다 추가로 업데이트할 예정이다.

### apply()
행(Row), 열(Column)단위 연산을 지원

### lapply()
- list + lapply
행(Row), 열(Column)단위 연산을 지원
