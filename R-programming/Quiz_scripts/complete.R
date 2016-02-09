# Date Feb 2016 7
# Author Sanjeev Sariya
# Data Science R programming Quiz on air pollution data
# Complete.R
# Print data matrix with number of observations and File name

complete <- function(directory,id=1:332){ # function
  
  matrix_obs<-matrix(ncol = 2,nrow = length(id)) # create matrix of 2 coln, and nrows= length of vector
  colnames(matrix_obs)<-c("id","nobs") # assign col names
  rownames(matrix_obs)<-c(1:length(id)) # asign row names
  
  for( i in 1:length(id)){ # iterate over length of vector.. this will help to assign values

    obs_file_number<-id[i]
    
    file_name<-paste(obs_file_number,".csv",sep="") # concatenate 
    
    if(obs_file_number<10){
      
      file_name<-paste("00",file_name,sep="") # to have it in the fomart of files
      
    }
    
    if(obs_file_number >= 10 && obs_file_number < 100){
      file_name<-paste("0",file_name,sep="")
    }
    
    path<-paste(directory,file_name,sep = "/") # store the path
    
    data<-read.table(path,header = T,sep=",") # read in the data
    data_without_na<-complete.cases(data) # get logical vector/matrix for missing values
    
    complete_cases<-data[data_without_na,] # get complete observations
    
    matrix_obs[i,1]=c(obs_file_number) # assign values - 1st column
    matrix_obs[i,2]=c(nrow(complete_cases))  # 2nd coumn
    
  } # for loop ends
  
  matrix_obs # print matrix

}



