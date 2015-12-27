# Gram Tokenizers

gram1Tokenizer <- function(x) {NGramTokenizer(x, RWeka::Weka_control(min = 1, max = 1))}
gram2Tokenizer <- function(x) {NGramTokenizer(x, RWeka::Weka_control(min = 2, max = 2))}
gram3Tokenizer <- function(x) {NGramTokenizer(x, RWeka::Weka_control(min = 3, max = 3))}
gram4Tokenizer <- function(x) {NGramTokenizer(x, RWeka::Weka_control(min = 4, max = 4))}
gram5Tokenizer <- function(x) {NGramTokenizer(x, RWeka::Weka_control(min = 5, max = 5))}