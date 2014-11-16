# Data splitter

inTest <- 0.45
inTrain <- 0.1
inCV <- 0.45

data_seperator <- function(x){
     val <- "NA"
     
     prob <- sample(3, 1, prob = c(inTest, inTrain, inCV), replace = T)
     
     if(prob == 1){val <- "Test"}
     if(prob == 2){val <- "Train"}
     if(prob == 3){val <- "CV"}
     
     val
}