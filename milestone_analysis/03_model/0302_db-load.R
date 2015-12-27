# Loading models

load("./cache/tFreq_1.RData")
load("./cache/nFreq_1.RData")
load("./cache/bFreq_1.RData")

load("./cache/tFreq_2.RData")
load("./cache/nFreq_2.RData")
load("./cache/bFreq_2.RData")

load("./cache/tFreq_3.RData")
load("./cache/nFreq_3.RData")
load("./cache/bFreq_3.RData")

load("./cache/tFreq_4.RData")
load("./cache/nFreq_4.RData")
load("./cache/bFreq_4.RData")


db <- dbConnect(SQLite(), dbname="train.db")
dbSendQuery(conn=db,
            "CREATE TABLE NGram
            (pre TEXT,
            word TEXT,
            freq INTEGER,
            n INTEGER)")

bulk_insert <- function(sql, key_counts)
{
  dbBegin(db)
  dbGetPreparedQuery(db, sql, bind.data = key_counts)
  dbCommit(db)
}


# Inserting in DB
#Twitter = cluster 1
sql_t4 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 4)"
bulk_insert(sql_t4, tFreq_4)

sql_t3 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 3)"
bulk_insert(sql_t3, tFreq_3)

sql_t2 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 2)"
bulk_insert(sql_t2, tFreq_2)

sql_t1 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 1)"
bulk_insert(sql_t1, tFreq_1)

#News = cluster 2
sql_n4 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 4)"
bulk_insert(sql_n4, nFreq_4)

sql_n3 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 3)"
bulk_insert(sql_n3, nFreq_3)

sql_n2 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 2)"
bulk_insert(sql_n2, nFreq_2)

sql_n1 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 1)"
bulk_insert(sql_n1, nFreq_1)


#Blogs = cluster 3
sql_b4 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 4)"
bulk_insert(sql_b4, bFreq_4)

sql_b3 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 3)"
bulk_insert(sql_b3, bFreq_3)

sql_b2 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 2)"
bulk_insert(sql_b2, bFreq_2)

sql_b1 <- "INSERT INTO NGram VALUES ($pre, $cur, $freq, 1)"
bulk_insert(sql_b1, bFreq_1)


# Testing
  
