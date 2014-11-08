# libraries
library(rattle)
library(tm)

#Data Load
cname <- file.path(".", "data", "en_US")
#length(dir(cname))
#dir(cname)
docs <-Corpus(DirSource(cname))
#class(docs)

