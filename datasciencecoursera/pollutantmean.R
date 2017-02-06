

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
pollutantmean <- function(directory, pollutant, id = 1:332) {
  combined <- data.frame()
  for (i in seq_along(id)) {
    file <- readr::read_csv(paste0(directory, "/", get_zeros(i), i, ".csv"))
    combined <- rbind(combined, file)
    out <- mean(combined[[pollutant]], na.rm = TRUE)
  }
  out
}

output <- pollutantmean(directory = "./specdata", pollutant = "sulfate", id = 1:10)

output

