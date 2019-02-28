print("hello")
asd <- 12123
pool <- UNOSODBC::conn_pool("MODBSAS")

# entrypoint.R
pr <- plumb("plumber.R")

# Register an exit handler
pr$registerHook("exit", function(){
    print("See ya later")
    print(asd)
    print(pool)
    
})

pr