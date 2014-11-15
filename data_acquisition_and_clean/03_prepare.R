# Goal here to come up wtih three sets per data source

load("./cache/docs_unstemmed.Rdata")


blogs <- data.frame(docs[[1]]$content, stringsAsFactors = FALSE)
colnames(blogs)[1] <- "blog_data" 

news <- data.frame(docs[[2]]$content, stringsAsFactors = FALSE)
colnames(news)[1] <- "news_data" 

twitter <- data.frame(docs[[3]]$content, stringsAsFactors = FALSE)
colnames(twitter)[1] <- "twitter_data" 


docs <- NULL

source("./helpers/data_seperator.R")

blogs$Type <- ""
news$Type <- ""
twitter$Type <- ""

# Splitting Blogs
blogs$Type <- lapply(blogs$Type, FUN = data_seperator)
news$Type <- lapply(news$Type, FUN = data_seperator)
twitter$Type <- lapply(twitter$Type, FUN = data_seperator)


test_blogs <- blogs[which(blogs$Type=="Test"),]
train_blogs <- blogs[which(blogs$Type=="Train"),]
CV_blogs <- blogs[which(blogs$Type=="CV"),]


test_news <- news[which(news$Type=="Test"),]
train_news <- news[which(news$Type=="Train"),]
CV_news <- news[which(news$Type=="CV"),]

test_twitter <- twitter[which(twitter$Type=="Test"),]
train_twitter <- twitter[which(twitter$Type=="Train"),]
CV_twitter <- twitter[which(twitter$Type=="CV"),]


# Removing unnecessary data
test_blogs$Type <- NULL
train_blogs$Type <- NULL
CV_blogs$Type <- NULL
blogs <- NULL

test_news$Type <- NULL
train_news$Type <- NULL
CV_news$Type <- NULL
news <- NULL

test_twitter$Type <- NULL
train_twitter$Type <- NULL
CV_twitter$Type <- NULL
twitter <- NULL


# Saving data
save(test_blogs,file = "./cache/test_blogs.RData")
save(train_blogs,file = "./cache/train_blogs.RData")
save(CV_blogs,file = "./cache/CV_blogs.RData")


save(test_news,file = "./cache/test_news.RData")
save(train_news,file = "./cache/train_news.RData")
save(CV_news,file = "./cache/CV_news.RData")


save(test_twitter,file = "./cache/test_twitter.RData")
save(train_twitter,file = "./cache/train_twitter.RData")
save(CV_twitter,file = "./cache/CV_twitter.RData")

