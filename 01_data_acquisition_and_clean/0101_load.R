# To analyze and provide basic statistics about the raw data

docs <-Corpus(DirSource(cname))

save(docs,file = "./cache/docs.RData")
