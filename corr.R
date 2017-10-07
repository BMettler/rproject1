corr <- function(directory, threshold = 0) 
  {
  files <- list.files(directory, full.names=TRUE)
  
  data <- data.frame()
  dcor <- c()
  
  
  for (x in 1:332)
  {
    data <- read.csv(files[x])
    
    #if threshold?
    if ( threshold < sum(complete.cases(data)) )
      {
      dcor <- c( dcor, cor(data$nitrate, data$sulfate, use="complete.obs"))
      }
  }
  #return ()
  
  # Check for nulls
  if (is.null(dcor)) dcor <- numeric(0)
  return (dcor)
  }