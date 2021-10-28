---
  title: "Lab 2"
author: "Danica Burwell"
date: "10/27/2021"
output: html_document
---
  
  
library(dplyr)
library(here)
library(tidyverse)


DD_FILEPATH <- here::here( "~/SCHOOL/Fall 2021 B/Lab 2/Newest/Lab 2/LTDB-DATA-DICTIONARY.csv" )

# import data dictionary
dd <- read.csv( DD_FILEPATH, stringsAsFactors=F )


  
#-------------------- 
#Filter 1: Search by Category

search_categories <- function(dd, categories) {search_categories <- grepl(categories, dd[categories], ignore.case = T)
all_categories <- dd[
  search_categories, c("age", "age-race", "age-ses", "edu", "employ", "employ-age", "fam", "fam-ses", "house", "lang", "pop", "pop-race", "race", "race-ses", "ses")]
return(all_categories)}

search_categories(dd$categories("age"))


#--------------------

#Filter 2: Search by Description



#--------------------

#Filter 3: Search by Time Period