
complete <- function(directory,id = 1:332){
  # get path to file list
  dir <- paste(getwd(),"/",directory,"/",sep="")
  
  #get catalog of files available
  file_list <- list.files(path=directory)
  ids <- vector()
  nobs <- vector()
  
  for(i in id){
    
    file_path <- paste(dir,file_list[i],sep = "")
    #read file
    file_data <- read.csv(file_path)
    
    #count complete observations
    com_obs <- sum(complete.cases(file_data))

    #append to vectors
    ids = c(ids,i)
    nobs = c(nobs,com_obs)
  }
  
  #create data frame and return
  data.frame(id=ids,nobs=nobs)
  
}

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)

