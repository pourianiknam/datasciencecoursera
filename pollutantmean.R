pollutantmean <- function(directory, pollutant, id = 1:332) {
  total_values <- c()
  
  for(monitor in id){
    path <- paste(getwd(), "/", directory, "/", sprintf("%03d", monitor), ".csv", sep = "")
    weather_data <- read.csv(path)
    pollutant_data <- weather_data[pollutant]
    total_values <- c(total_values, pollutant_data[!is.na(pollutant_data)])
  }
  
  mean(total_values)
}
  
  
