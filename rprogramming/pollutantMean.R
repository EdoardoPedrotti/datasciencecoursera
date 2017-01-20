pollutantmean <- function(directory, pollutant, id = 1:332) {
  print(paste("mean for ",pollutant))
  data <- data.frame()
  for(i in id) { 
    filename <-paste(directory, "/", sprintf("%03d", i),".csv", sep="")
    print(filename)
    data <- rbind(data,read.csv(filename))
  }
  mean(data[[pollutant]], na.rm=TRUE)


}

readData <- function(directory, id=1:332) {
  data <- data.frame()
  print("starting to read...")
  for(i in id) { 
    filename <-paste(directory, "/", sprintf("%03d", id[i]),".csv", sep="")
    print("reading")
    print(filename)
    data <- rbind(data,read.csv(filename))
  }
  print("finished")
  data
}
