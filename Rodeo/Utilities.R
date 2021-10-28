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
#Filter 1: Filter by Category

filter_categories <- function(dd, categories){ 
  category_filter <- grepl(themes, data$category, ignore.case=T)
  categories <- dd[category_filter, c("root", "root2", "category", "definition", "X1970.f",
                                      "X1970.s", "X1980.f", "X1980.s", "X1990.f", "X1990.s",
                                      "X2000.f", "X2000.s", "X2010.f", "X2010.s")]
  return(category_filter)
}


search_categories <- function(dd, categories) {search_categories <- grepl(categories, dd[categories], ignore.case = T)
all_categories <- dd[
  search_categories, c("age", "age-race", "age-ses", "edu", "employ", "employ-age", "fam", "fam-ses", "house", "lang", "pop", "pop-race", "race", "race-ses", "ses")]
return(all_categories)}

search_categories(dd$categories("age"))

#--------------------

#Filter 2: Search Variable Description



#--------------------

#Filter 3: Search Variables by Time Period