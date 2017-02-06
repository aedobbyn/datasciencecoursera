


# figure out the correct number of 0s to append
# return vector with "", "0", or "00"
get_zeros <- function(file_num) {
  if (file_num < 10) {
    ap <- "00"
  } else if (file_num >= 10 & file_num < 100) {
    ap <- "0"
  } else {
    ap <- ""
  }
}


complete <- function(directory, pollutant, id = 1:332) {
  ids <- vector(length = length(id))
  nobs <- vector(length = length(id))
  for (i in seq_along(id)) {
    file <- readr::read_csv(paste0(directory, "/", get_zeros(i), i, ".csv"))
    ids[[i]] <- i
    nobs[[i]] <- sum(complete.cases(file) == TRUE)
  }
  out <- data.frame(cbind(ids, nobs))
}

ncomplete <- complete(directory = "./specdata", pollutant = "sulfate", id = 1:332)
ncomplete

