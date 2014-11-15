#Preparing the corpus
getTransformations()

# Applying simple transformations:
toSpace <- content_transformer(function(x, pattern) gsub(pattern, " ", x))

# Removing URLs
docs <- tm_map(docs, toSpace, "(f|ht)tp(s?)://(.*)[.][a-z]+")

# Removing twitter accounts (ex. @JovanSardinha)
docs <- tm_map(docs, toSpace, "@[^\\s]+")

# Other simple transformations
docs <- tm_map(docs, toSpace, "/")
docs <- tm_map(docs, toSpace, "@")
docs <- tm_map(docs, toSpace, "\\|")


# Converting the corpus to lower case
docs <- tm_map(docs, content_transformer(tolower))

# Removing numbers
docs <- tm_map(docs, removeNumbers)

# Removing punctuations
docs <- tm_map(docs, removePunctuation)

# Removing english stop words
docs <- tm_map(docs, removeWords, stopwords("english"))

# Removing whitespaces
docs <- tm_map(docs, stripWhitespace)

# Filtering profanity

# Downloaded from: http://www.bannedwordlist.com/
swearWords <- read.table(file =swearWordsPath, stringsAsFactors=F)

# Downloaded from http://www.frontgatemedia.com/a-list-of-723-bad-words-to-blacklist-and-how-to-use-facebooks-moderation-tool/
blockedTerms <- read.csv(file = blockedTermsPath, stringsAsFactors=F, skip=3)
blockedTerms <- blockedTerms[,2]
blockedTerms <- unlist(gsub(",", "", blockedTerms))

profanityFilter <- c(swearWords[,1], blockedTerms)
profanityFilter <- unique(profanityFilter)

# Removing profanity
docs <- tm_map(docs, removeWords, profanityFilter)

# Removing whitespaces
docs <- tm_map(docs, stripWhitespace)

save(docs,file = "./cache/docs_unstemmed.RData")

# Stemming documents
docs <- tm_map(docs, stemDocument)

save(docs,file = "./cache/docs_stemmed.RData")

#DTM
#blogsDTM <- DocumentTermMatrix(VCorpus(VectorSource(docs[[1]]$content)))


