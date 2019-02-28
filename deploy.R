
# install.packages("tidyverse")
# install.packages("plumber")
# install.packages("swagger")
# install.packages("RSQLite")
# install.packages("pool")

con <- DBI::dbConnect(RSQLite::SQLite(), dbname = "table.sqlite")
DBI::dbWriteTable(con, "mtcars", mtcars, overwrite=TRUE)
DBI::dbDisconnect(con)

library(plumber)
plumber::plumb(dir = getwd())$run()
