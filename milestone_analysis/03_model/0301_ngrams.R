# Goal here to come up with a n-grams

load("./cache/dtm1_blogs.RData")
load("./cache/dtm2_blogs.RData")
load("./cache/dtm3_blogs.RData")
load("./cache/dtm4_blogs.RData")

load("./cache/dtm1_news.RData")
load("./cache/dtm2_news.RData")
load("./cache/dtm3_news.RData")
load("./cache/dtm4_news.RData")

load("./cache/dtm1_twitter.RData")
load("./cache/dtm2_twitter.RData")
load("./cache/dtm3_twitter.RData")
load("./cache/dtm4_twitter.RData")
  
source("./helpers/modeling_Functions.R")

# Unigrams
tFreq_1 <- tdmToFreq(dtm1_blogs)
nFreq_1 <- tdmToFreq(dtm1_news)
bFreq_1 <- tdmToFreq(dtm1_twitter)

# Bigrams
tFreq_2 <- tdmToFreq(dtm2_blogs)
nFreq_2 <- tdmToFreq(dtm2_news)
bFreq_2 <- tdmToFreq(dtm2_twitter)

# Trigrams
tFreq_3 <- tdmToFreq(dtm3_blogs)
nFreq_3 <- tdmToFreq(dtm3_news)
bFreq_3 <- tdmToFreq(dtm3_twitter)

# Quadgram
tFreq_4 <- tdmToFreq(dtm4_blogs)
nFreq_4 <- tdmToFreq(dtm4_news)
bFreq_4 <- tdmToFreq(dtm4_twitter)


# ProcessGrams
tFreq_1 <- processGram(tFreq_1)
nFreq_1 <- processGram(nFreq_1)
bFreq_1 <- processGram(bFreq_1)


tFreq_2 <- processGram(tFreq_2)
nFreq_2 <- processGram(nFreq_2)
bFreq_2 <- processGram(bFreq_2)

tFreq_3 <- processGram(tFreq_3)
nFreq_3 <- processGram(nFreq_3)
bFreq_3 <- processGram(bFreq_3)

tFreq_4 <- processGram(tFreq_4)
nFreq_4 <- processGram(nFreq_4)
bFreq_4 <- processGram(bFreq_4)



# Saving Models
save(tFreq_1,file = "./cache/tFreq_1.RData")
save(nFreq_1,file = "./cache/nFreq_1.RData")
save(bFreq_1,file = "./cache/bFreq_1.RData")

save(tFreq_2,file = "./cache/tFreq_2.RData")
save(nFreq_2,file = "./cache/nFreq_2.RData")
save(bFreq_2,file = "./cache/bFreq_2.RData")

save(tFreq_3,file = "./cache/tFreq_3.RData")
save(nFreq_3,file = "./cache/nFreq_3.RData")
save(bFreq_3,file = "./cache/bFreq_3.RData")

save(tFreq_4,file = "./cache/tFreq_4.RData")
save(nFreq_4,file = "./cache/nFreq_4.RData")
save(bFreq_4,file = "./cache/bFreq_4.RData")

# Cleaning Environment
rm(list=ls())