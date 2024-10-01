# 통신매체 음란 범죄 구속/불구속 현황 데이터를 읽어옵니다
ynA <- read.csv("excelNgraph_img/excel/경찰청_성폭력범죄_범죄자_구속_불구속_현황_20211231.csv", header = T, fileEncoding = "euc-kr")

# 데이터 구조 확인
ynA_data <- ynA[1:nrow(ynA),]

# 열 이름 설정
colnames(ynA_data) <- c('NO', 'Year', 'yArrest', 'nArrest')

# ggplot2 패키지를 사용한 시각화
library(ggplot2)

unArrest = ynA_data$nArrest
Arrest = ynA_data$yArrest

ggplot(data=ynA_data, aes(x = unArrest, y = Arrest, color = year)) +
  geom_point(size = 3) + 
  ggtitle("통신매체 구속 불구속") + 
  theme(plot.title = element_text(size = 25, face = "bold", colour = "black")) + 
  geom_text(aes(label=year), vjust = -1)
