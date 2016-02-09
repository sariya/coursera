# Date Feb 2016 7
# Author Sanjeev Sariya
# Data Science R programming Quiz on air pollution data
# Correlation.R
# create correlation vector for matrix values that passed Threshold

corr <- function(directory,threshold=0){ # function
  
  corr_vector<-c() # create global vector/// this will be return in the ends
  
  files_list<-dir(directory) # get file list
  
  for(file_name in files_list){ #iterate over file list
    
    path_file<-paste(directory,file_name,sep = "/") # store the path
   
    data<-read.table(path_file,header = T,sep=",") # read in the data
    data_without_na<-complete.cases(data) # get logical vector/matrix for missing values
    
    complete_cases<-data[data_without_na,] # get complete observations

    if(nrow(complete_cases) > threshold) {# check if they are above threshold
      
      correlation_value<-cor(complete_cases$sulfate,complete_cases$nitrate)
      
      corr_vector<-c(corr_vector,correlation_value) # push eveything in the array
      
    }
    # if loop ends
  }
  # for loop ends
  
  corr_vector # print in the end to return something in R

}


