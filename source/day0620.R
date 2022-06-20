num_vector = c(1, 2, 3)
num_vector2 = c(5, 6, 7)

num_vector[1] + num_vector2[2]

# 명목형 자료형 Factor
locaiton_vector <- c("서울", "인천", "부산")
factor_location_vector <- factor(locaiton_vector)
factor_location_vector

class(factor_location_vector)
help(factor)

# 순서형 자료형 Factor
temperature_factor <- c("기온높음", 
                        "기온보통", 
                        "기온낮음", 
                        "기온높음", 
                        "기온보통", 
                        "기온보통")

temperature_factor

factor_temperature_factor <- factor(temperature_factor, 
                                    ordered = TRUE, 
                                    levels  = c("기온보통", 
                                                "기온낮음", 
                                                "기온높음"))


## 데이터 프레임
# - 엑셀 데이터
no = c(1,2,3,4,5)
sex = c("male", "female", "male","male", "female")
korean = c(87,92,95,81,87)


exam = data.frame(no, sex, korean)
exam


exam$no[1]
exam$sex[2]

# 데이터 타입
class(exam$sex)
class(exam$no)

str(exam)

# 데이터 내보내기 & 불러오기
# 경로
getwd()
?write.csv
write.csv(x = exam, file = "temp.csv")
write.csv(x = exam, file = "exam.csv")


# 데이터 불러오기
temp = read.csv("exam.csv")
temp = read.csv("Desktop/dataset/exam.csv")

# p.51
# R에서 예제파일 exam.csv를 객체 exam으로 입력해서 설명함.
exam = read.csv("exam.csv")

install.packages("ggplot2")
library(ggplot2)
economics <- ggplot2::economics #새 객체 economics에 economics데이터를 입력

install.packages("data.table")
library(data.table)

install.packages("readxl")
library(readxl)

read_excel("student1_xl.xlsx")

#p.68 설명
read.csv("student1.csv")
read.csv("student1.csv", skip = 1)

# 엑셀 파일에 있는 복수의 시트에서 특정 시트 불러오기
read_excel("student_xl.xlsx") #첫 번째 시트 불러오기

read_excel("student1_xl.xlsx", sheet=2) #두 번째 시트 불러오기

# p.69 txt 파일 불러오기


# p.73 SPSS 파일 불러오기
install.packages("foreign")
library(foreign)
student <- read.spss("student.sav")
as.data.frame(student) #형변환

