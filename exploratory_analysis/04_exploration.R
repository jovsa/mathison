# Goal here to explore data and observe interesting trends

source("./helpers/gram_Tokenizers.R")


load("./cache/train_blogs.RData")
CTrain_blogs <- Corpus(VectorSource(train_blogs))
dtm1_blogs <- DocumentTermMatrix(CTrain_blogs, control = list(tokenize=gram1Tokenizer))
dtm2_blogs <- DocumentTermMatrix(CTrain_blogs, control = list(tokenize=gram2Tokenizer))
dtm3_blogs <- DocumentTermMatrix(CTrain_blogs, control = list(tokenize=gram3Tokenizer))
save(dtm1_blogs,file = "./cache/dtm1_blogs.RData")
save(dtm2_blogs,file = "./cache/dtm2_blogs.RData")
save(dtm3_blogs,file = "./cache/dtm3_blogs.RData")
CTrain_blogs <- NULL
train_blogs <- NULL
dtm1_blogs <- NULL
dtm2_blogs <- NULL
dtm3_blogs <- NULL


load("./cache/train_news.RData")
CTrain_news <- Corpus(VectorSource(train_news))
dtm1_news <- DocumentTermMatrix(CTrain_news, control = list(tokenize=gram1Tokenizer))
dtm2_news <- DocumentTermMatrix(CTrain_news, control = list(tokenize=gram2Tokenizer))
dtm3_news <- DocumentTermMatrix(CTrain_news, control = list(tokenize=gram3Tokenizer))
save(dtm1_news,file = "./cache/dtm1_news.RData")
save(dtm2_news,file = "./cache/dtm2_news.RData")
save(dtm3_news,file = "./cache/dtm3_news.RData")
CTrain_news <- NULL
train_news <- NULL
dtm1_news <- NULL
dtm2_news <- NULL
dtm3_news <- NULL


load("./cache/train_twitter.RData")
CTrain_twitter <- Corpus(VectorSource(train_twitter))
dtm1_twitter <- DocumentTermMatrix(CTrain_twitter, control = list(tokenize=gram1Tokenizer))
dtm2_twitter <- DocumentTermMatrix(CTrain_twitter, control = list(tokenize=gram2Tokenizer))
dtm3_twitter <- DocumentTermMatrix(CTrain_twitter, control = list(tokenize=gram3Tokenizer))
save(dtm1_twitter,file = "./cache/dtm1_twitter.RData")
save(dtm2_twitter,file = "./cache/dtm2_twitter.RData")
save(dtm3_twitter,file = "./cache/dtm3_twitter.RData")
CTrain_twitter <- NULL
train_twitter <- NULL
dtm1_twitter <- NULL
dtm2_twitter <- NULL
dtm3_twitter <- NULL


load("./cache/train_blogs.RData")
load("./cache/train_news.RData")
load("./cache/train_twitter.RData")

CTrain_blogs <- Corpus(VectorSource(train_blogs))
CTrain_news <- Corpus(VectorSource(train_news))
CTrain_twitter <- Corpus(VectorSource(train_twitter))
CTrain_docs <- c(CTrain_blogs, CTrain_news, CTrain_twitter)
dtm1_docs <- DocumentTermMatrix(CTrain_docs, control = list(tokenize=gram1Tokenizer))
dtm2_docs <- DocumentTermMatrix(CTrain_docs, control = list(tokenize=gram2Tokenizer))
dtm3_docs <- DocumentTermMatrix(CTrain_docs, control = list(tokenize=gram3Tokenizer))
save(dtm1_docs,file = "./cache/dtm1_docs.RData")
save(dtm2_docs,file = "./cache/dtm2_docs.RData")
save(dtm3_docs,file = "./cache/dtm3_docs.RData")
CTrain_docs <- NULL
CTrain_blogs <- NULL
CTrain_news <- NULL
CTrain_twitter <- NULL
train_docs <- NULL
train_blogs <- NULL
train_news <- NULL
train_twitter <- NULL
dtm1_docs <- NULL
dtm2_docs <- NULL
dtm3_docs <- NULL


load("./cache/dtm1_docs.RData")
load("./cache/dtm2_docs.RData")
load("./cache/dtm3_docs.RData")
gram1freq_docs <- data.frame(word = dtm1_docs$dimnames$Terms, freq = rowSums(sparseMatrix(i = dtm1_docs$i, j = dtm1_docs$j, x = dtm1_docs$v)))
gram1freq_docs <- arrange(gram1freq_docs, desc(freq))

data.frame(gram1 = gram1freq_docs$word[1:10])


load("./cache/dtm1_blogs.RData")
load("./cache/dtm2_blogs.RData")
load("./cache/dtm3_blogs.RData")

gram1freq_blogs <- data.frame(word = dtm1_blogs$dimnames$Terms, freq = rowSums(sparseMatrix(i = dtm1_blogs$i, j = dtm1_blogs$j, x = dtm1_blogs$v)))
gram1freq_blogs <- arrange(gram1freq_blogs, desc(freq))

gram2freq_blogs <- data.frame(word = dtm2_blogs$dimnames$Terms, freq = rowSums(sparseMatrix(i = dtm2_blogs$i, j = dtm2_blogs$j, x = dtm2_blogs$v)))
gram2freq_blogs <- arrange(gram2freq_blogs, desc(freq))

data.frame(gram1 = gram1freq_blogs$word[1:10], gram2 = gram2freq_blogs$word[1:10])



temp <- DocumentTermMatrix(CTrain_blogs)
freq <- colSums(as.matrix(temp))
ord <- order(freq)
length(freq)
freq[tail(ord)]


