# libraries
library(rattle)
library(tm)

#Data Load
cname <- file.path(".", "data", "en_US")
docs <-Corpus(DirSource(cname))



