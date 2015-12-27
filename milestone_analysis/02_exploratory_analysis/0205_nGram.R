# Goal here to explore data and observe interesting trends from nGrams

## Analysis of n-grams

topx <- 15

# Blogs
load("./cache/dtm1_blogs.RData")
load("./cache/dtm2_blogs.RData")
load("./cache/dtm3_blogs.RData")

freq1_blogs <- colSums(as.matrix(dtm1_blogs))
ord1_blogs <- order(freq1_blogs)
freq1_blogs[tail(ord1_blogs,10)]

freq2_blogs <- colSums(as.matrix(dtm2_blogs))
ord2_blogs <- order(freq2_blogs)
freq2_blogs[tail(ord2_blogs,10)]

freq3_blogs <- colSums(as.matrix(dtm3_blogs))
ord3_blogs <- order(freq3_blogs)
freq3_blogs[tail(ord3_blogs,10)]

# blogs_nGrams <- data.frame(freq1 = freq1_blogs[tail(ord1_blogs,topx)], 
#                            freq2 = freq2_blogs[tail(ord2_blogs,topx)],
#                            freq3 = freq3_blogs[tail(ord3_blogs,topx)])

# News
load("./cache/dtm1_news.RData")
load("./cache/dtm2_news.RData")
load("./cache/dtm3_news.RData")

freq1_news <- colSums(as.matrix(dtm1_news))
ord1_news <- order(freq1_news)
freq1_news[tail(ord1_news,10)]

freq2_news <- colSums(as.matrix(dtm2_news))
ord2_news <- order(freq2_news)
freq2_news[tail(ord2_news,10)]

freq3_news <- colSums(as.matrix(dtm3_news))
ord3_news <- order(freq3_news)
freq3_news[tail(ord3_news,10)]


# Twitter
load("./cache/dtm1_twitter.RData")
load("./cache/dtm2_twitter.RData")
load("./cache/dtm3_twitter.RData")

freq1_twitter <- colSums(as.matrix(dtm1_twitter))
ord1_twitter <- order(freq1_twitter)
freq1_twitter[tail(ord1_twitter,10)]

freq2_twitter <- colSums(as.matrix(dtm2_twitter))
ord2_twitter <- order(freq2_twitter)
freq2_twitter[tail(ord2_twitter,10)]

freq3_twitter <- colSums(as.matrix(dtm3_twitter))
ord3_twitter <- order(freq3_twitter)
freq3_twitter[tail(ord3_twitter,10)]


# Docs
load("./cache/dtm1_docs.RData")
load("./cache/dtm2_docs.RData")
load("./cache/dtm3_docs.RData")

freq1_docs <- colSums(as.matrix(dtm1_docs))
ord1_docs <- order(freq1_docs)
freq1_docs[tail(ord1_docs,25)]

freq2_docs <- colSums(as.matrix(dtm2_docs))
ord2_docs <- order(freq2_docs)
freq2_docs[tail(ord2_docs,10)]

freq3_docs <- colSums(as.matrix(dtm3_docs))
ord3_docs <- order(freq3_docs)
freq3_docs[tail(ord3_docs,10)]





