# To analyze and provide basic statistics about the raw data

source("./helpers/data_sampling.R")
source("./helpers/data_cleaner.R")
source("./helpers/gram_tokenizers.R")
source("./helpers/model_functions.R")
source("./helpers/db_functions.R")
source("./helpers/backoff_predict.R")

options(mc.cores=1)

twitter <- sampler('./data/corpus/en_US/en_US.twitter.txt', .02)
blogs <- sampler('./data/corpus/en_US/en_US.blogs.txt', .02)
news <- sampler('./data/corpus/en_US/en_US.news.txt', .02)

tCorp <- cleaner(twitter)
bCorp <- cleaner(blogs)
nCorp <- cleaner(news)

save(tCorp,file = "./cache/tCorp.RData")
save(bCorp,file = "./cache/bCorp.RData")
save(nCorp,file = "./cache/nCorp.RData")

# tdm_1 <- TermDocumentMatrix(c(tCorp, bCorp, nCorp), control = list(tokenize = gram1Tokenizer))
tdm_2 <- TermDocumentMatrix(c(tCorp, bCorp, nCorp), control = list(tokenize = gram2Tokenizer))
tdm_3 <- TermDocumentMatrix(c(tCorp, bCorp, nCorp), control = list(tokenize = gram3Tokenizer))
tdm_4 <- TermDocumentMatrix(c(tCorp, bCorp, nCorp), control = list(tokenize = gram4Tokenizer))
tdm_5 <- TermDocumentMatrix(c(tCorp, bCorp, nCorp), control = list(tokenize = gram5Tokenizer))

# save(tdm_1,file = "./cache/tdm_1.RData")
save(tdm_2,file = "./cache/tdm_2.RData")
save(tdm_3,file = "./cache/tdm_3.RData")
save(tdm_4,file = "./cache/tdm_4.RData")
save(tdm_5,file = "./cache/tdm_5.RData")

# Word frequencies
freq_5 <- tdmToFreq(tdm_5)
freq_4 <- tdmToFreq(tdm_4)
freq_3 <- tdmToFreq(tdm_3)
freq_2 <- tdmToFreq(tdm_2)
# freq_1 <- tdmToFreq(tdm_1)

# pre and current words
freq_5 <- processGram(freq_5)
freq_4 <- processGram(freq_4)
freq_3 <- processGram(freq_3)
freq_2 <- processGram(freq_2)
# freq_1 <- processGram(freq_1)

save(freq_5,file = "./cache/freq_5.RData")
save(freq_4,file = "./cache/freq_4.RData")
save(freq_3,file = "./cache/freq_3.RData")
save(freq_2,file = "./cache/freq_2.RData")
# save(freq_1,file = "./cachefreq_1.RData")

# load("./cache/freq_5.RData")
# load("./cache/freq_4.RData")
# load("./cache/freq_3.RData")
# load("./cache/freq_2.RData")

# Initializing DB
db <- dbConnect(SQLite(), dbname="db/train.db")
dbSendQuery(conn=db,
            "CREATE TABLE NGram
            (pre TEXT,
            word TEXT,
            freq INTEGER,
            n INTEGER)")  # ROWID automatically created with SQLite dialect

# Insert into SQLite database
sql_5 <- "INSERT INTO NGram VALUES ($pre, $word, $freq, 5)"
db_insert(sql_5, freq_5)
sql_4 <- "INSERT INTO NGram VALUES ($pre, $word, $freq, 4)"
db_insert(sql_4, freq_4)
sql_3 <- "INSERT INTO NGram VALUES ($pre, $word, $freq, 3)"
db_insert(sql_3, freq_3)
sql_2 <- "INSERT INTO NGram VALUES ($pre, $word, $freq, 2)"
db_insert(sql_2, freq_2)
# sql_1 <- "INSERT INTO NGram VALUES ($pre, $word, $freq, 1)"
# db_insert(sql_1, freq_1)
dbDisconnect(db)

# Test
ngram_backoff("happy birthday", db)

