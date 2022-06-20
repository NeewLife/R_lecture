# 패키지 설치
install.packages("ggplot2")
library(ggplot2)

# 통계
# 데이터
# 내장 데이터
# iris
str(iris)
?str

# 그래프 분포도
ggplot(data = iris, aes(x = Sepal.Length, 
                        y = Sepal.Width)) +
  geom_smooth(method = lm) # 그래프 종류

