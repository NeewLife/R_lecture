# 데이터 불러오기
# 경로 설정이 매우 중요
#
getwd()
# setwd("C:/")
#csv 파일 / 엑셀파일

# p.91
mpg1<- read.csv("mpg1.csv", stringsAsFactors=F)
str(mpg1)
#stringsAsFactors -> 범주형 벡터로 바꿀것인가?

#평균
mean(mtcars$mpg) # 평균
var(mtcars$mpg) # 분산
sd(mtcars$mpg) # 표준편차


# 수리통계 --> 증명
# 일반인 / 비전공자 --> 활용 / 의미 정도 파악

summary(iris) # 5개 범주별 통계량
summary(iris$Sepal.Length) # Sepal.Length의 통계량

str(mpg1)

# 범주별 빈도 분석
table(mpg1$trans)
table(mpg1$manufacturer)

table(mpg1$trans, mpg1$manufacturer)

# 빈도의 비율 구하기
a <- table(mpg1$trans)
prop.table(a)

b <- table(mpg1$trans, mpg1$drv)
prop.table(b)
prop.table(table(mpg1$manufacturer))

# 행과 열의 비율 형식 맞춘다
prop.table(b, margin = 1) # 가로 합을 1로 두고 계산한 비율
prop.table(b, margin = 2) # 세로 합을 1로 두고 계산한 비율

# 소수점 아래 자리 지정
round(0.32123141,2) #round는 반올림

round(prop.table(table(mpg1$trans)),2)