
library(plumber)
plumber::plumb(dir = getwd())$run(swagger = TRUE)

