# Samples from data file
sampler <- function(filename, fraction) {
  system(paste("perl -ne 'print if (rand() < ",
               fraction, ")'", filename), intern=TRUE)
}