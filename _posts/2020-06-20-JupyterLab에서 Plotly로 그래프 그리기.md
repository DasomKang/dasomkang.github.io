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
1. 아래 링크 따라서  JupyterLab plotly extensions 설치하면 끝
   - https://plotly.com/python/getting-started/#jupyterlab-support-python-35
2. JupyterLab 실행 중이었다면 재실행 필요



## 2. 그래프 그리기 
`plotly.graph_objects` 혹은 `plotly.express` import 후 그리면 된다. 
* import plotly.graph_objects as go
* import plotly.express as px  
  

dataframe 다룰 때는 plotly.express가 훨씬 편해서 plotly.express로 정착함.

  

**Plotly 홈페이지의 예제**

```python
import plotly.graph_objects as go
fig = go.Figure(data=go.Bar(y=[2, 3, 1]))
fig.show()
```
```python
import plotly.express as px
data_canada = px.data.gapminder().query("country == 'Canada'")
fig = px.bar(data_canada, x='year', y='pop')
fig.show()
```

  

## 3. 코드는 정상적으로 돌아갔는데 이미지가 안뜨는 경우

plotly 설치 후 예제 코드 복붙해서 돌려봤는데, 처음엔 그래프가 잘 뜨다가 어느 순간부터 안뜨는 것임. 재설치 몇 번 다시 하고 헤매다가 원인을 찾음.  
`plotly.express`로 잘 그리다가 `plotly.graph_objects`를 import하고 그려볼려니 그래프 생성이 안됨. 반대의 경우도 마찬가지. 즉 두 library를 동시에 import하면 안그려짐.해당 오류관련 문서를 찾아본 것은 아니고 내 경험 상 그러함.  

그러므로 둘 중 하나만 쓰자. 나는 위에서도 말했듯이 `plotly.express`가 훨씬 다루기 편해서 그것만 쓸 것임.  

​      



## 4. Plotly에서 색상 바꾸기
Plotly 공식 홈페이지에 그래프 색상 변경하는 법도 쉽게 안내되어있다.  두 가지 방법이 있는데, 하나는 ggplot의 palette처럼 plotly에서 제공하는 색상셋을 적용하는 방법, 나머지 하나는 label 마다 고유 색상을 지정해주는 방법.

  

**첫 번째 방법**   
아래 링크에서 원하는 셋을 고른 후, 그래프에 반영한다.

- https://plotly.com/python/colorscales/#continuous-vs-discrete-color
- https://plotly.com/python/builtin-colorscales/ 

![color1](https://imgur.com/MQkAjtF.png)


```python
df = px.data.iris()
fig = px.scatter(df, x="sepal_width", y="sepal_length", color="species",
                 color_discrete_sequence=px.colors.sequential.Sunsetdark,
                 width=600, height=400,
                 size='petal_length',
                 hover_data=['petal_width'])
fig.show()
```

![plotly graph1](https://imgur.com/jDPJrb5.png)

  

**두 번째 방법**  
plotly는 css.color 색상코드를 이용한다. 아래 링크에서 색상코드를 찾아 라벨에 매핑해준다.

- https://www.rapidtables.com/web/css/css-color.html#blue
```python
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
  ![color2](https://imgur.com/n3MWIyp.png)



## 5. 레포트에 첨부했었던 그래프 유형들



