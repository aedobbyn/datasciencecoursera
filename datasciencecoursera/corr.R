

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


# Calculate the mean of the pollutant column for each file
corr <- function(directory, threshold = 0) {
  out <- vector()
  for (i in seq_along(id)) {
    file <- readr::read_csv(paste0(directory, "/", get_zeros(i), i, ".csv"))
    these_cases <- sum(complete.cases(file) == TRUE) {
      if (these_cases >= threshold)
        this_cor <- cor(file[[sulfate]], file[[nitrate]])
        out[[i]] <- rbind(out, this_cor)
    } else {
      out <- 0
    }
  out
  }
}

cr <- corr(directory = "./specdata", threshold = 50)
cr

