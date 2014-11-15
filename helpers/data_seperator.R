# Data splitter

inTest <- 0.2
inTrain <- 0.6
inCV <- 0.2

data_seperator <- function(x){
     val <- "NA"
     
     prob <- sample(3, 1, prob = c(inTest, inTrain, inCV), replace = T)
     
     if(prob == 1){val <- "Test"}
     if(prob == 2){val <- "Train"}
     if(prob == 3){val <- "CV"}
     
     val
}