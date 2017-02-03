

directory <- "./specdata"

foo <- read.csv(paste0(dat, "/001.csv"))

id <- 200


# figure out the correct number of 0s to append
get_zeros <- function(id) {
  if (id < 10) {
    ap <- "00"
  } else if (id >= 10 & id < 100) {
    ap <- "0"
  } else {
    ap <- ""
  }
}

zeros <- get_zeros(200)


bar <- read.csv(paste0(directory, "/", zeros, id, ".csv"))

bar <- as_tibble(bar)




pollutantmean <- function(directory, pollutant, id = 1:332) {
  read.csv(paste0(directory, "/00", id, ".csv"))
  out <- vector(length = length(id))
  for (i in seq_along(id)) {
    out[[i]] <- mean(pollutant, na.rm = TRUE)
  }
  out
}

x <- pollutantmean(dat, "sulfate", 1:3)


