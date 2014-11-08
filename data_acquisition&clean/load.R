# libraries
library(rattle)
library(tm)

#Data Load
cname <- file.path(".", "data", "en_US")
#length(dir(cname))
#dir(cname)
docs <-Corpus(DirSource(cname))
#class(docs)

# File Analysis
enUSBlogs <- docs[1][[1]][1]
enUSNews <- docs[2][[1]][1]
enUSTwitter <- docs[3][[1]][1]

# For en US
lengthBlogs <- lapply(enUSBlogs$content, function(x) nchar(x))
maxLengthBlogs <- max(unlist(lengthBlogs))

lengthNews <- lapply(enUSNews$content, function(x) nchar(x))
maxLengthNews <- max(unlist(lengthNews))

lengthTwitter <- lapply(enUSTwitter$content, function(x) nchar(x))
maxLengthTwitter <- max(unlist(lengthTwitter))


# Analyzing the love/hate relationship
loveTwitter <- lapply(enUSTwitter$content, function(x) grep("love", x))
hateTwitter <- lapply(enUSTwitter$content, function(x) grep("hate", x))
loveHateRel <- sum(unlist(loveTwitter))/sum(unlist(hateTwitter)) 
