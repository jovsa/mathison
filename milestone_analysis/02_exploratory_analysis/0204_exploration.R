# Goal here to explore data and observe interesting trends

source("./helpers/gram_Tokenizers.R")


load("./cache/train_blogs.RData")
CTrain_blogs <- Corpus(VectorSource(train_blogs))
dtm1_blogs <- DocumentTermMatrix(CTrain_blogs, control = list(tokenize=gram1Tokenizer))
dtm2_blogs <- DocumentTermMatrix(CTrain_blogs, control = list(tokenize=gram2Tokenizer))
dtm3_blogs <- DocumentTermMatrix(CTrain_blogs, control = list(tokenize=gram3Tokenizer))
dtm4_blogs <- DocumentTermMatrix(CTrain_blogs, control = list(tokenize=gram4Tokenizer))
save(dtm1_blogs,file = "./cache/dtm1_blogs.RData")
save(dtm2_blogs,file = "./cache/dtm2_blogs.RData")
save(dtm3_blogs,file = "./cache/dtm3_blogs.RData")
save(dtm4_blogs,file = "./cache/dtm4_blogs.RData")
CTrain_blogs <- NULL
train_blogs <- NULL
dtm1_blogs <- NULL
dtm2_blogs <- NULL
dtm3_blogs <- NULL
dtm4_blogs <- NULL


load("./cache/train_news.RData")
CTrain_news <- Corpus(VectorSource(train_news))
dtm1_news <- DocumentTermMatrix(CTrain_news, control = list(tokenize=gram1Tokenizer))
dtm2_news <- DocumentTermMatrix(CTrain_news, control = list(tokenize=gram2Tokenizer))
dtm3_news <- DocumentTermMatrix(CTrain_news, control = list(tokenize=gram3Tokenizer))
dtm4_news <- DocumentTermMatrix(CTrain_news, control = list(tokenize=gram4Tokenizer))
save(dtm1_news,file = "./cache/dtm1_news.RData")
save(dtm2_news,file = "./cache/dtm2_news.RData")
save(dtm3_news,file = "./cache/dtm3_news.RData")
save(dtm4_news,file = "./cache/dtm4_news.RData")
CTrain_news <- NULL
train_news <- NULL
dtm1_news <- NULL
dtm2_news <- NULL
dtm3_news <- NULL
dtm4_news <- NULL

load("./cache/train_twitter.RData")
CTrain_twitter <- Corpus(VectorSource(train_twitter))
dtm1_twitter <- DocumentTermMatrix(CTrain_twitter, control = list(tokenize=gram1Tokenizer))
dtm2_twitter <- DocumentTermMatrix(CTrain_twitter, control = list(tokenize=gram2Tokenizer))
dtm3_twitter <- DocumentTermMatrix(CTrain_twitter, control = list(tokenize=gram3Tokenizer))
dtm4_twitter <- DocumentTermMatrix(CTrain_twitter, control = list(tokenize=gram4Tokenizer))
save(dtm1_twitter,file = "./cache/dtm1_twitter.RData")
save(dtm2_twitter,file = "./cache/dtm2_twitter.RData")
save(dtm3_twitter,file = "./cache/dtm3_twitter.RData")
save(dtm4_twitter,file = "./cache/dtm4_twitter.RData")
CTrain_twitter <- NULL
train_twitter <- NULL
dtm1_twitter <- NULL
dtm2_twitter <- NULL
dtm3_twitter <- NULL
dtm4_twitter <- NULL



# load("./cache/train_blogs.RData")
# load("./cache/train_news.RData")
# load("./cache/train_twitter.RData")
# CTrain_blogs <- unlist(Corpus(VectorSource(train_blogs)))
# CTrain_news <- unlist(Corpus(VectorSource(train_news)))
# CTrain_twitter <- unlist(Corpus(VectorSource(train_twitter)))
# CTrain_docs <- c(CTrain_blogs, CTrain_news, CTrain_twitter)
# dtm1_docs <- DocumentTermMatrix(CTrain_docs, control = list(tokenize=gram1Tokenizer))
# dtm2_docs <- DocumentTermMatrix(CTrain_docs, control = list(tokenize=gram2Tokenizer))
# dtm3_docs <- DocumentTermMatrix(CTrain_docs, control = list(tokenize=gram3Tokenizer))
# dtm4_docs <- DocumentTermMatrix(CTrain_docs, control = list(tokenize=gram4Tokenizer))
# save(dtm1_docs,file = "./cache/dtm1_docs.RData")
# save(dtm2_docs,file = "./cache/dtm2_docs.RData")
# save(dtm3_docs,file = "./cache/dtm3_docs.RData")
# save(dtm4_docs,file = "./cache/dtm4_docs.RData")
# CTrain_docs <- NULL
# CTrain_blogs <- NULL
# CTrain_news <- NULL
# CTrain_twitter <- NULL
# train_docs <- NULL
# train_blogs <- NULL
# train_news <- NULL
# train_twitter <- NULL
# dtm1_docs <- NULL
# dtm2_docs <- NULL
# dtm3_docs <- NULL
# dtm4_docs <- NULL



