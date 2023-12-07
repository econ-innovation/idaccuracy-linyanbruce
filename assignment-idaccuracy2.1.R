#作业 2
# 设置文件夹路径
path <- "assignment_idaccuracy/Aminer"
datadir <- "/Users/11197/Documents/bigdata/assignment_idaccuracy/Aminer"
setwd(datadir)
# install.packages('readr')用于读取csv文件
library(readr)
result1 <- data.frame()
#读取列表
files_list <- list.files(pattern = "*.csv" )
#for 循环结构
for(file in files_list){
  file_data <- read.csv(file)
  result1  <- rbind(result1, file_data)
} 

head(result1)

