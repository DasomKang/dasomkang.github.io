---
layout: post
navigation: True
title: R markdown으로 github 블로그 포스팅하기
date: 2018-11-03
tags:
categories: etc
comments: true
---

일단 맨 아래 추가해놓은 링크를 보고 그대로 따라했기 때문에 사실 새로운 정보는 없다. 그래도 내가 진행했던 순서대로 정리를 다시 해놔야 나중에라도 다시 금방 할 수 있을 것 같아서...
아, 이 블로그 테마의 경우 카테고리를 추가하는 방법이 다른 테마와 다른 것 같아서 내가 한 방법대로 하지말고 아래 링크를 따라하는 걸 추천한다.
gitub blog를 미리 세팅해놨다는 가정하에,


####1. github 블로그 폴더 내에 폴더 추가
내 경우에는 아래 두 개만 추가했다.
- ```userid.github.io/_Rmd```: R 마크다운 파일이 저장되는 경로
- ```assets/article_images/title```: R 코드로 만들어진 이미지가 저장되는 경로


####2. R studio에서 .Rmd 파일 작성 및 저장
Rstudio를 켜고 업로드할 글이나 테스트해볼 글을 작성한다. 프론트매터의 경우는 아래와 같이 작성하면 된다.

```
---
layout: post
title: "markdown-test"
author: "username"
date: '2018-11-03'
output: html_document
categories: ETC
---
```
물론 위에서 title, author, date, 다 마음대로 바꾸면 되고, date의 경우
아마 2018 11 3 으로 자동으로 값이 저장되어있을 텐데, 형식을 2018-11-03으로 바꿔줘야 한다. 그리고 글을 작성하고 저장하면 된다. 나는 처음에 테스트용으로 그냥 상단만 수정한 뒤 바로 업로드해봤었다.

  R 마크다운 파일을 위 ```userid.github.io/_Rmd``` 폴더에 저장한다.

####3. 새로운 .R파일 하나 생성

아래 스크립트를 작성한다.

```
# jekyll 블로그 디렉토리 설정
# userid.github.io의 로컬 위치를 적어주면 되고 나의 경우에는 아래와 같다.
base <- ".../github_blog/userid.github.io/"

# Rmd파일이 저장될 디렉토리 지정
rmds <- "_Rmd"
setwd(base)

# 파일명 지정 (방금 만든 파일 이름을 적으면 된다.)
filename <- "2018-11-03-R-markdown-test.Rmd"

# 폴더 경로들
figs.path <- "assets/article_images/"
posts.path <- "_posts/"


# START!!!
require(knitr)
render_jekyll(highlight = "pygments")
opts_knit$set(base.url="/")

file <- paste0(rmds, "/", filename)

# 파일 경로 설정
fig.path <- paste0(figs.path, sub(".Rmd$", "", basename(file)), "/")
opts_chunk$set(fig.path = fig.path)

# suppress messages
opts_chunk$set(cache = F, warning = F, message = F, cache.path = "_cache/", tidy = F)

out.file <- basename(knit(file))
file.rename(out.file, paste0(posts.path, out.file))
```
그리고 R에서 하나씩 끝까지 실행한다! 성공할경우

```
processing file: _Rmd/2018-11-03-R-markdown-test.Rmd
  |.........                                                        |  14%
  ordinary text without R code

  |...................                                              |  29%
label: setup (with options)
List of 1
 $ include: logi FALSE

  |............................                                     |  43%
  ordinary text without R code

  |.....................................                            |  57%
label: cars
  |..............................................                   |  71%
  ordinary text without R code

  |........................................................         |  86%
label: pressure (with options)
List of 1
 $ echo: logi FALSE

  |.................................................................| 100%
  ordinary text without R code


output file: 2018-11-03-R-markdown-test.md

> file.rename(out.file, paste0(posts.path, out.file))
[1] TRUE
```

이런 결과가 뜨고, _posts에 마크다운파일이 생성되고, 이미지도 알아서 지정한 폴더에 저장이 된다.

간단히 요약하자면, .Rmd 하나 작성할 때 마다 _Rmd폴더에 저장해놓고서 위 코드를 R에서 실행해주면 된다.


##### Reference
- http://otzslayer.github.io/r/jekyll-with-R-markdown/
