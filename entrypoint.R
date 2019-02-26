# entrypoint.R
pr <- plumb("plumber.R")

# Register an exit handler
pr$registerHook("exit", function(){
    print("See ya later")
})

pr