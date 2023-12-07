#作业 2.2
# 设置文件夹路径
path <- "assignment_idaccuracy/Aminer"
datadir <- "/Users/11197/Documents/bigdata/assignment_idaccuracy/Aminer"
setwd(datadir)
# install.packages('readr')用于读取csv文件
library(readr)
result2 <- data.frame()
#读取列表
files_list <- list.files(pattern = "*.csv" )

#lapply的使用
data_list <- lapply(files_list, read.csv)
#将这些数据框进行行合并，并将结果存储在result2中
result2 <- do.call(rbind, data_list)
head(result2)

#! shebang
# "#! /usr/bin/env Rscript"
# Rscript append_script.R /Users/11197/Documents/bigdata/assignment_idaccuracy/Aminer
