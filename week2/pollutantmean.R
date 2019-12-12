pollutantmean <- function(directory,pollutant,id=1:332){
  # get path to file list
  dir <- paste(getwd(),"/",directory,"/",sep="")
  data <- NA
  
  #get catalog of files available
  file_list <- list.files(path=directory)
  
  for(i in id){
    #concat directory and file name together
    file_path <- paste(dir,file_list[i],sep = "")
    
    #read csv file
    file_data <- read.csv(file_path)
    
    #collect data 
    data <- rbind(data,file_data)
  }
  #calculate mean
  mean(data[[pollutant]], na.rm=TRUE)
  
}


pollutantmean("specdata","nitrate",70:72 )
