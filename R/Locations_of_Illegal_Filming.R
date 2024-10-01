# 카메라 이용촬영 범죄 발생 장소 현황 데이터를 읽어옵니다
media <- read.csv("excelNgraph_img/excel/경찰청_카메라등이용촬영범죄_발생장소_현황_20211231.csv", header = T, fileEncoding = "euc-kr")

# 데이터 구조 확인
media_data <- media[1:nrow(media),]

# 열 이름 설정
colnames(media_data) <- c('Year','Apt', 'On_the_street','Store', 'Wating_Room', 'Subway', 'Other_Transports', 'Others')

# 카메라 이용촬영 범죄 발생 장소별 그래프
par(mfrow = c(3,3))

barplot(as.matrix(media_data$Apt),beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        ylim = c(0,1500), xlab = "Apt(Housing)", ylab = "Event") 

barplot(as.matrix(media_data$On_the_street),beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        ylim = c(0,1400), xlab = "On the street", ylab = "Event") 

barplot(as.matrix(media_data$Store),beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        ylim = c(0,300), xlab = "Store", ylab = "Event") 

barplot(as.matrix(media_data$Wating_Room),beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        ylim = c(0,2000), xlab = "Wating_Room", ylab = "Event") 

barplot(as.matrix(media_data$Subway),beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        ylim = c(0,800), xlab = "Subway", ylab = "Event") 

barplot(as.matrix(media_data$Other_Transports),beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        ylim = c(0,300), xlab = "Other_Transports", ylab = "Event") 

barplot(as.matrix(media_data$Others),beside = TRUE, names.arg = c('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021'), 
        ylim = c(0,3500), xlab = "Others", ylab = "Event")
