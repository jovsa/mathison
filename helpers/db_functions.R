db_insert <- function(sql, key_counts)
{
  dbBegin(db)
  dbGetPreparedQuery(db, sql, bind.data = key_counts)
  dbCommit(db)
}