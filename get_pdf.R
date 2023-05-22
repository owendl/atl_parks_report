library(tidyverse)
library(pdftools)
source("scraplinks.R")

get_weekly_pdf<-function(){

parks='https://www.atlantaga.gov/government/departments/parks-recreation/office-of-parks'

links = scraplinks(parks)

weekly_report_url = links$url[grepl("Weekly Report", links$link) & grepl("showpublisheddocument", links$url)]

download.file(weekly_report_url, destfile = "weekly_report.pdf")

text = pdf_text("weekly_report.pdf")
return(text)
}



