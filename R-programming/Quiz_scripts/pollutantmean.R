# Date Feb 2016 7
# Author Sanjeev Sariya
# Data Science R programming Quiz on air pollution data
# get an array of file, and print its mean

getwd()
setwd("/Users/sariyasanjeev/Documents/Coursera/Data Science/R programming/")
dir()

pollutantmean <- function(directory,pollutant,id=1:332){

  sum_val=0 # variable for sum
  n_element=0 # number of elements
  mean_val=0 # print final mean value
  
  for (i in id){ #iterate over vector
    
    file_name<-paste(i,".csv",sep="") # concatenate 
    
    if(i<10){
      
      file_name<-paste("00",file_name,sep="")
      
    }
    if(i >= 10 && i < 100){
      file_name<-paste("0",file_name,sep="")
    }
    
    path<-paste(directory,file_name,sep = "/") # store the path

    data<-read.table(path,header = T,sep=",") # read in the data
    complete_data<-data[[pollutant]] # get the value of pollutatn
    remove_na <- is.na(complete_data) # get NA values
    
    n_element=n_element + length(complete_data[!remove_na]) #  get total elements
    sum_val=sum_val + sum(complete_data[!remove_na]) # add the values

  }
  mean_val<-sum_val/n_element # get the mean value
  mean_val
}




