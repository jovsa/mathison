# The goal here is to split the data set into 3 parts
# Part 1: Training data (60%)
# Part 2: Cross validation data (20%)
# Part 3: Testing data (20%)
     
load("docs_unstemmed.Rdata")

# function getVal(){
# runif(1, min = 0, max = 10)
# }
     
blogs <- data.frame(docs[[1]]$content, stringsAsFactors = FALSE)
colnames(blogs)[1] <- "blog_data" 

news <- data.frame(docs[[2]]$content, stringsAsFactors = FALSE)
colnames(news)[1] <- "news_data" 

twitter <- data.frame(docs[[3]]$content, stringsAsFactors = FALSE)
colnames(twitter)[1] <- "twitter_data" 

inTrain_blogs <- createDataPartition(y=blogs$blog_data, p=0.6, list=FALSE)
