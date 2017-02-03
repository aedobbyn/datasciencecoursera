



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

x <- get_zeros(203)

bar <- read.csv(paste0(directory, "/", get_zeros(200), 200, ".csv"))
mean(bar$sulfate, na.rm = TRUE)


pollutantmean <- function(directory, pollutant, id = 1:332) {
  out <- vector(length = length(id))
  for (i in seq_along(id)) {
    file <- read.csv(paste0(directory, "/", get_zeros(id), id, ".csv"))
    out[[i]] <- mean(file$pollutant, na.rm = TRUE)
  }
  out
}


output <- pollutantmean("./specdata", "sulfate", 1:3)


