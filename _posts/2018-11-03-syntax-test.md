---
layout: post
navigation: True
title: syntax test
date: 2018-11-03
tags:
categories: etc
comments: true
---

test 1.

~~~ ruby
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
~~~

test 2.

{% highlight ruby %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}
