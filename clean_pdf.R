library(tidyverse)
source("get_pdf.R")

combine_pages<- function(text){
  text_list = str_split(text, "\\n")
  
  text_list_concat=list()
  for(t in text_list){
    i = length(text_list_concat)
    if(t[1]=="Page :"){
      text_list_concat[[i+1]]<-t
    }else{
      text_list_concat[[i]]<-c(text_list_concat[[i]], t)
    }
  }  
  return(text_list_concat)
}
