# Working directory initialization
wd <- "./Documents/GitHub/Project_Mathison"
setwd(wd)

# Running file_paths.R
source("./config/file_paths.R")

library(rattle)
library(tm)
library(SnowballC)
library(caret)
library(plyr)
library(tau)
library(ngram)
library(knitr)
library(Matrix)
library(RWeka)
library(ggplot2)
library(reshape)
library(wordcloud)

source("http://bioconductor.org/biocLite.R")
#biocLite("Rgraphviz")


# Cleaners
wd <- NULL
