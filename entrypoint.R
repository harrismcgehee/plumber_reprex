# entrypoint.R
pr <- plumb("notplumber.R")

# Register an exit handler
pr$registerHook("exit", function(){
    print("See ya later")
})

pr