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

# 꺾은선 그래프 그리기 위한 설정
par(mfrow = c(1,1))

# 성범죄 검거율 계산
rape_rate <- crime_data$rArrest / crime_data$Rape
r_data <- round(rape_rate, digits = 2)

camera_rate <- crime_data$cArrest / crime_data$Camera
c_data <- round(camera_rate, digits = 2)

media_rate <- crime_data$mArrest / crime_data$Media
m_data <- round(media_rate, digits = 2)

place_rate <- crime_data$pArrest / crime_data$Place
p_data <- round(place_rate, digits = 2)

# 연도별 성범죄 검거율을 시각화
year <- c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021')

plot(year, r_data, type = "o", ylim = c(0.75, 1), xlab = "Year", ylab = "Arrest rate", lwd=2)

lines(year, c_data, type = "o", col = "red", lwd=2)
lines(year, m_data, type = "o", col = "green", lwd=2)
lines(year, p_data, type = "o", col = "blue", lwd=2)

legend(2014.5, 0.87, c("Rape", "Camera", "Media", "Sexual Place"), col = c("black", "red", "green", "blue"), pch = 1)
