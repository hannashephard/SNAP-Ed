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

presurvey_1<-presurvey %>%
  na_if(99)

postsurvey_1<-postsurvey %>%
  na_if(99)

prepost<-inner_join(presurvey_1, postsurvey_1, by = "ID")

prepost_1<-full_join(presurvey_1, postsurvey_1, by = "ID")

prepost_2<-right_join(presurvey_1, postsurvey_1, by = "ID")

prepost_3<-left_join(presurvey_1, postsurvey_1, by = "ID")
