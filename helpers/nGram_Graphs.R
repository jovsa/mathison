## Analysis of n-grams

#GRAPHS#

#TOP 10 single grams
topx <- 10
freq1 <- data.frame(blogs = freq1_blogs[tail(ord1_blogs,topx)], news = freq1_news[tail(ord1_news,topx)], twitter = freq1_twitter[tail(ord1_twitter,topx)], all= freq1_docs[tail(ord1_docs,topx)] )
freq1$Words <- row.names(freq1)
freq1$Words <- as.factor(freq1$Words)
freq1$Words <- reorder(freq1$Words, freq1$all)
freq1 <- melt(freq1, id = c("Words"))
#freq1 <- freq1[order(freq1$variable,freq1$value),]

png(filename="./images/wordCount.png", width = 1088, height = 562)
g <- ggplot(freq1, aes(x = Words, y = order(value), fill = variable))
g <- g + geom_bar(stat="identity", position = "dodge")
g <- g + ggtitle("Top 10 most occuring words by frequency") + ylab("Frequency") + xlab("Words")
print(g)
dev.off()

# Word cloud
topx <- 300
freq1 <- data.frame(blogs = freq1_blogs[tail(ord1_blogs,topx)], news = freq1_news[tail(ord1_news,topx)], twitter = freq1_twitter[tail(ord1_twitter,topx)], all= freq1_docs[tail(ord1_docs,topx)] )
png(filename = "./images/wordCloud.png")
set.seed(142)
wordcloud(words = row.names(freq1), freq = freq1$all,scale=c(5, .1), colors=brewer.pal(6, "Dark2"))
dev.off()

# 1Gram Graphs
topx <- 1000
freq1 <- data.frame(blogs = freq1_blogs[tail(ord1_blogs,topx)], news = freq1_news[tail(ord1_news,topx)], twitter = freq1_twitter[tail(ord1_twitter,topx)])
freq1$Sum <- apply(freq1,1,sum)
freq1$Words <- row.names(freq1)
freq1$Words <- as.factor(freq1$Words)
freq1$Words <- reorder(freq1$Words, freq1$Sum)
freq1$Sum <- NULL
freq1 <- melt(freq1, id = c("Words"))

png(filename="./images/1gramDist.png", width = 1088, height = 562)
g <- ggplot(freq1, aes(x = Words, y = (value), fill = variable))
g <- g + geom_bar(stat="identity")
g <- g + theme(axis.text.x = element_blank(),axis.text.x = element_blank()) + labs(x=NULL)
g <- g + ggtitle("1-gram Distribution; n=1000") + ylab("Frequency")
print(g)
dev.off()


# 2Gram Graphs
freq2 <- data.frame(blogs = freq2_blogs[tail(ord2_blogs,topx)], news = freq2_news[tail(ord2_news,topx)], twitter = freq2_twitter[tail(ord2_twitter,topx)])
freq2$Sum <- apply(freq2,1,sum)
freq2$Words <- row.names(freq2)
freq2$Words <- as.factor(freq2$Words)
freq2$Words <- reorder(freq2$Words, freq2$Sum)
freq2$Sum <- NULL
freq2<- melt(freq2, id = c("Words"))

png(filename="./images/2gramDist.png", width = 1088, height = 562)
g <- ggplot(freq2, aes(x = Words, y = (value), fill = variable))
g <- g + geom_bar(stat="identity")
g <- g + theme(axis.text.x = element_blank(),axis.text.x = element_blank()) + labs(x=NULL)
g <- g + ggtitle("2-gram Distribution; n=1000") + ylab("Frequency")
print(g)
dev.off()



# 3 gram
freq3 <- data.frame(blogs = freq3_blogs[tail(ord3_blogs,topx)], news = freq3_news[tail(ord3_news,topx)], twitter = freq3_twitter[tail(ord3_twitter,topx)])
freq3$Sum <- apply(freq3,1,sum)
freq3$Words <- row.names(freq3)
freq3$Words <- as.factor(freq3$Words)
freq3$Words <- reorder(freq3$Words, freq3$Sum)
freq3$Sum <- NULL
freq3<- melt(freq3, id = c("Words"))

png(filename="./images/3gramDist.png", width = 1088, height = 562)
g <- ggplot(freq3, aes(x = Words, y = (value), fill = variable))
g <- g + geom_bar(stat="identity")
g <- g + theme(axis.text.x = element_blank(),axis.text.x = element_blank()) + labs(x=NULL)
g <- g + ggtitle("3-gram Distribution; n=1000") + ylab("Frequency")
print(g)
dev.off()



