
# entrypoint.R
#con <- DBI::dbConnect(RSQLite::SQLite(), dbname = ":memory:")


pool <- pool::dbPool(RSQLite::SQLite(), dbname = "table.sqlite")

pr <- plumb("plumber.R")

# Register an exit handler
pr$registerHook("exit", function(){
    print("See ya later")
    testthat::expect_equal(pool::poolClose(pool),NULL)
    # testthat::expect_equal(DBI::dbDisconnect(con),TRUE)
})

pr
