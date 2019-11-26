install.packages("dplyr")
library(dplyr)
install.packages("readxl")
library(readxl)

Eat_Smart_Live_Strong_Data_Pre <-read_excel("/Users/hannashephard/Desktop/Eat Smart Live Strong Data.xlsx", sheet = 1)
presurvey<-as_tibble(Eat_Smart_Live_Strong_Data_Pre)
presurvey
Eat_Smart_Live_Strong_Data_Post <-read_excel("/Users/hannashephard/Desktop/Eat Smart Live Strong Data.xlsx", sheet = 2)
postsurvey<-as_tibble(Eat_Smart_Live_Strong_Data_Post)
postsurvey




