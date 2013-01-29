count <- function(cause = NULL) {
    if (is.null(cause)) {
        stop("cause can't be NULL")
    }
    if (!(cause %in% c("asphyxiation", "blunt force", "other", "shooting", "stabbing", "unknown"))) {
        stop("unknown cause")
    }

    homicides <- readLines("homicides.txt")
    to_find <- paste0("cause:\\s*", cause)
    length(grep(to_find, homicides, ignore.case = TRUE))
}
