#! /usr/bin/Rscript

args <- commandArgs(trailingOnly = TRUE)
datadir <- args[1]
getwd()
file.exists(datadir)

Append <- function(datadir) {
  setwd(datadir)
  files_list <- list.files(pattern = "*.csv")
  data_list <- lapply(files_list, read.csv)
  df_result <- do.call(rbind, data_list)
  return(df_result)
}


result <- Append(datadir)
head(result)
