# entrypoint.R
con <- DBI::dbConnect(RSQLite::SQLite(), dbname = ":memory:")
DBI::dbWriteTable(con, "mtcars", mtcars)

pr <- plumb("plumber.R")

# Register an exit handler
pr$registerHook("exit", function(){
    print("See ya later")
    testthat::expect_equal(DBI::dbDisconnect(con),TRUE)
})

pr
