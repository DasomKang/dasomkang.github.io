
---
layout: post
navigation: True
title: JupyterLab에서 Plotly로 그래프 그리기
date: 2020-06-20
tags: [JupyterLab, Plotly]
categories: [Archive]
comments: true
---


# JupyterLab에서 Plotly로 그래프 그리기



## 1. Plotly 설치  
1. 아래 링크에서 JupyterLab plotly extensions 설치하면 끝
- https://plotly.com/python/getting-started/#jupyterlab-support-python-35
2. JupyterLab 이용 중이었다면 재실행 필요



## 2. 그래프 그리기 
`plotly.graph_objects` 혹은 `plotly.express` import 후 그리면 된다. 
* import plotly.graph_objects as go
* import plotly.express as px  
  
dataframe 다룰 때는 plotly.express가 훨씬 편해서 plotly.express로 정착함.


**Plotly 홈페이지의 예제**
```
import plotly.graph_objects as go
fig = go.Figure(data=go.Bar(y=[2, 3, 1]))
fig.show()
```

```
import plotly.express as px
data_canada = px.data.gapminder().query("country == 'Canada'")
fig = px.bar(data_canada, x='year', y='pop')
fig.show()
```


## 3. 코드는 정상적으로 돌아갔는데 이미지가 안뜨는 경우
plotly설치 후 예제 코드 복붙해서 돌려봤는데, 처음엔 그래프가 잘 뜨다가 어느 순간부터 안뜨는 것임. 재설치 몇 번 다시 하고 헤매다가 원인을 찾음.  
plotly.express로 잘 그리다가 plotly.graph_objects를 import하고 그려볼려니 그래프 생성이 안됨. 반대의 경우도 마찬가지. 즉 두 library를 동시에 import하면 안그려짐. 충돌이 일어나나봄. 해당 오류관련 문서를 찾은 것은 아니고 내 경험.   
그러므로 걍 둘 중 하나만 쓰자. 나는 위에서도 말했듯이 express가 훨씬 다루기 편해서 그것만 쓸 것임.  
  
## 4. Plotly에서 색상 바꾸기
Plotly에서 색상을 바꾸는 방법도 위 plotly 문서에 소개되어있긴하다.   
크게 두 가지 방법이 있는데, 1번은 plotly에서 palette 처럼 제공하는 색상셋을 이용하는 방법
2번은 label 하나하나 색상코드를 지정해주는 방법.  
  

**1번의 경우**   
아래 링크에서 원하는 셋을 고르면 된다.   
- https://plotly.com/python/colorscales/#continuous-vs-discrete-color
- https://plotly.com/python/builtin-colorscales/ 
![builtin-colorscales](.pastes/2020-06-20-15-47-54.png)

그리고  아래처럼 쉽게 적용이 가능하다.  
```
df = px.data.iris()
fig = px.scatter(df, x="sepal_width", y="sepal_length", color="species",
                 color_discrete_sequence=px.colors.sequential.Sunsetdark,
                 width=600, height=400,
                 size='petal_length',
                 hover_data=['petal_width'])
fig.show()
```  

![color1](.pastes/2020-06-20-16-07-57.png)
  
  
**2번의 경우**  
css.color를 이용하는데, 나는 아래 링크에서 색상명을 직접 찾아 이용했다.
- https://www.rapidtables.com/web/css/css-color.html#blue
```
df = px.data.iris()
fig = px.scatter(df, x="sepal_width", y="sepal_length", color="species",
                 width=600, height=400,
                 size='petal_length',
                 hover_data=['petal_width'],
                 color_discrete_map={
                    "setosa": "navy",
                    "versicolor": "powderblue",
                    "virginica": "cornflowerblue"}, 
                )
fig.show()
```
  ![color2](.pastes/2020-06-20-16-10-40.png)
  
