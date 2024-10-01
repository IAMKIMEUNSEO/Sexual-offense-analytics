# 경찰청 성범죄 발생 및 검거 현황 데이터를 읽어옵니다
crime <- read.csv("../excelNgraph_img/경찰청_성범죄 발생 및 검거 현황_20211231.csv", header = T, fileEncoding = "euc-kr")

# 데이터 구조 확인
head(crime)

# 데이터를 crime_data 변수에 저장
crime_data <- crime[1:nrow(crime),]

# 열 이름 설정
colnames(crime_data) <- c('Year', 'Rape', 'rArrest', 'Camera', 'cArrest', 'Media', 'mArrest', 'Place', 'pArrest')

# 데이터 확인
head(crime_data)

crime_data

# 여러 그래프를 한 화면에 그리기 위한 설정
par(mfrow = c(2,2))

# 강간 강제추행 발생 및 검거 현황
barplot(as.matrix(crime_data$Rape), beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        xlab = "Rape crime(Red) & Arrest(Green)", ylab = 'Event', col = "red", ylim = c(0,25000))
par(new=TRUE)
barplot(as.matrix(crime_data$rArrest), beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        col = "green", ylim = c(0,25000))

# 카메라 이용촬영 범죄 발생 및 검거 현황
barplot(as.matrix(crime_data$Camera), beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        xlab = "Camera crime(Red) & Arrest(Green)", ylab = 'Event', col = "red", ylim = c(0,8000))
par(new=TRUE)
barplot(as.matrix(crime_data$cArrest), beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        col = "green", ylim = c(0,8000))

# 통신매체 음란 범죄 발생 및 검거 현황
barplot(as.matrix(crime_data$Media), beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        xlab = "Media crime(Red) & Arrest(Green)", ylab = 'Event', col = "red", ylim = c(0,6000))
par(new=TRUE)
barplot(as.matrix(crime_data$mArrest), beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        col = "green", ylim = c(0,6000))

# 성적 목적 다중 이용 장소 침입 범죄 발생 및 검거 현황
barplot(as.matrix(crime_data$Place), beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        xlab = "Sexual Place crime(Red) & Arrest(Green)", ylab = 'Event', col = "red", ylim = c(0,700))
par(new=TRUE)
barplot(as.matrix(crime_data$pArrest), beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        col = "green", ylim = c(0,700))
