print("hello")
asd <- 12123
pool <- UNOSODBC::conn_pool("MODBSAS")

# entrypoint.R
<<<<<<< HEAD
=======
#con <- DBI::dbConnect(RSQLite::SQLite(), dbname = ":memory:")
con <- DBI::dbConnect(RSQLite::SQLite(), dbname = "table.sqlite")
DBI::dbWriteTable(con, "mtcars", mtcars, overwrite=TRUE)

pool <- pool::dbPool(con)

>>>>>>> 8c974a9be7fd078dac5bbadcf833bf9446151523
pr <- plumb("plumber.R")

# Register an exit handler
pr$registerHook("exit", function(){
    print("See ya later")
<<<<<<< HEAD
    print(asd)
    print(pool)
    
=======
    testthat::expect_equal(pool::poolClose(pool),NULL)
    testthat::expect_equal(DBI::dbDisconnect(con),TRUE)
>>>>>>> 8c974a9be7fd078dac5bbadcf833bf9446151523
})

pr
