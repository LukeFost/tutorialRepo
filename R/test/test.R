# body -> function
body <- module({
    printText <- function(var) {
        return(
            var
        )
    }
    fixTest <- function(var) {
        other_var <- "Bazinga!!"
        new_var <- c(var, other_var)
        return(new_var)
    }
})
