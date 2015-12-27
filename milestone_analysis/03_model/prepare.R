# To analyze and provide basic statistics about the raw data

source("./helpers/data_sampling.R")
source("./helpers/data_cleaner.R")

twitter <- sampler('./data/corpus/en_US/en_US.twitter.txt', .013)
blogs <- sampler('./data/corpus/en_US/en_US.blogs.txt', .013)
news <- sampler('./data/corpus/en_US/en_US.news.txt', .013)

tCorp <- cleaner(twitter)
bCorp <- cleaner(blogs)
nCorp <- cleaner(news)
