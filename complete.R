
complete <- function(directory, id = 1:332) 
  {
      files <- list.files(directory, full.names=TRUE)
      data <- data.frame()

      
      for (x in id)
      {
        #z <- data.frame()
        # we need to record the file we are on
        
        # then lets loop through the file and find complete cases
        #z <- sum(complete.cases(read.csv(files[x])))
        
        y <- c(x, sum(complete.cases(read.csv(files[x]))))
        
        # record the number of complete cases
        data <- rbind( data, y )
      }
    
    colnames(data)[1] <- 'id'
    colnames(data)[2] <- 'nobs'
    data 
}
