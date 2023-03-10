#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Huda Sahaf
# Data: 16 Febuary 2023
# Contact: huda.sahaf@mail.mail.utoronto.ca 
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? Idk


#### Workspace setup ####\
library(xml2)
library(httr)
library(tidyverse)

#### Download data ####
NASA_APOD_20230216 <-
  GET("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2023-02-16")

content(NASA_APOD_20230216)$url |>
  download.file(destfile = "inputs/NASA_APOD_20230216.jpg")

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         