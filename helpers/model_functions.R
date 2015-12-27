tdmToFreq <- function(tdm) {
  freq <- sort(row_sums(tdm, na.rm=TRUE), decreasing=TRUE)
  word <- names(freq)
  returnVal <- data.frame(word=word, freq=freq)
}

processGram <- function(dt) {
#   dt[, c("pre", "cur"):=list(unlist(strsplit(word, "[ ]+?[a-z]+$")), 
#                              unlist(strsplit(word, "^([a-z]+[ ])+"))[2]), 
#      by=word]

  dt$pre <- unlist(strsplit(as.character(dt$word), "[ ]+?[a-z]+$"))
  #dt$cur <- unlist(strsplit(as.character(dt$word), "\\s(\\w+)$"))
  dt
}
