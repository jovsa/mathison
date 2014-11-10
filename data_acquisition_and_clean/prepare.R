# libraries
library(rattle)
library(tm)

#Preparing the corpus
getTransformations()

# Applying simple transformations:
toSpace <- content_transformer(function(x, pattern) gsub(pattern, " ", x))
docs <- tm_map(docs, toSpace, "/|@|\\|")

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
