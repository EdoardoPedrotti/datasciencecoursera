corr <- function(directory, threshold = 0) { 
  
  completes <- complete(directory)
  
  completes <- completes[completes["nobs"] > threshold,]
  

  
  data <- readData(directory, completes["id"])
  
  clean <- complete.cases(data)
  
  data <- data[clean,]
  
  cor(data$sulfate, data$nitrate)
    
}
