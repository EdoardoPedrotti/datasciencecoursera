complete <- function(directory, id = 1:332) { 
  completes <- data.frame()
  
  for(i in id) {
 
      filename <-paste(directory, "/", sprintf("%03d", i),".csv", sep="")

      data <- read.csv(filename)
      nobsi <- sum(complete.cases(data))

      
      res <- c(i, nobsi)

      completes <- rbind(completes, res)
     
    
  }
  cols <- c("id","nobs")
  colnames(completes) <- cols
  completes
}
