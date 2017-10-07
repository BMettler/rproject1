
pollutantmean <- function(directory, pollutant, id = 1:332)
  {
  files <- list.files(directory, full.names=TRUE)

  data <- data.frame()
  
  for (x in id)
  {
    data <- rbind( data, read.csv(files[x]))
  }

  mean(data[,pollutant], na.rm = TRUE)
  
  
}


