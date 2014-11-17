# Working directory initialization
wd <- "./Documents/GitHub/Project_Mathison"
setwd(wd)

# Running file_paths.R
source("./config/file_paths.R")

# Libraries
# install.packages("rattle")
# install.packages("tm")
# install.packages("SnowballC")
# install.packages("caret")
# install.packages("plyr")
# install.packages("tau")
# install.packages("ngram")
# install.packages("knitr")
# install.packages("Matrix")
# install.packages("RWeka")
# install.packages("ggplot2")
# install.packages("wordcloud")

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
