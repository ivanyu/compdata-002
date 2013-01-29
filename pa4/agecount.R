agecount <- function(age = NULL) {
    ## Check that "age" is non-NULL; else throw error
    
    ## Read "homicides.txt" data file
    
    ## Extract ages of victims; ignore records where no age is
    ## given
    
    ## Return integer containing count of homicides for that age

    if (is.null(age)) {
        stop("age can't be NULL")
    }

    homicides <- readLines("homicides.txt")

    to_find <- paste0("\\b", age, "\\s+years\\s+old")
    length(grep(to_find, homicides, ignore.case = TRUE))
}
