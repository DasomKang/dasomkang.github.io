---
layout: post
navigation: True
title: syntax test
date: 2018-11-03
tags:
categories: etc
comments: true
---

krmadown으로 바뀌고나니 syntax highlight가 grave accent가 안먹힌다. 그래서 찾아본 결과 두 가지 방법이 있었는데, 1. ~~~ 이 있고, 2. {% highlight ruby %}를 쓰는 방법이 있었다.
2번째 꺼는 editor에서 작성할 때 preview에서 인식하질 못하는데다가 지저분해보여서 1번으로 다 바꿔써 쓸 예정..

1. '~~~ ruby' 방법 => ```에서 ~~~로만 바뀜.

~~~ ruby
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
~~~

2. {% highlight ruby %} 방법

{% highlight ruby %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}
