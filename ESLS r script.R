install.packages("dplyr")
library(dplyr)
install.packages("readxl")
library(readxl)

#Load in excel workbooks and transform to tibbles.
Eat_Smart_Live_Strong_Data_Pre <-read_excel("/Users/hannashephard/Desktop/Eat Smart Live Strong Data.xlsx", sheet = 1)
presurvey<-as_tibble(Eat_Smart_Live_Strong_Data_Pre)
presurvey
Eat_Smart_Live_Strong_Data_Post <-read_excel("/Users/hannashephard/Desktop/Eat Smart Live Strong Data.xlsx", sheet = 2)
postsurvey<-as_tibble(Eat_Smart_Live_Strong_Data_Post)
postsurvey

#Reclassify '99' as missing.
presurvey_1<-presurvey %>%
  na_if(99)
postsurvey_1<-postsurvey %>%
  na_if(99)

#Left join pre and post survey data.
prepost<-left_join(presurvey_1, postsurvey_1, by = "ID")

#Perform t tests. 
t.test(prepost$awg, prepost$bwg, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$abeans, prepost$bbeans, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$afruit, prepost$bfruit, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$aveg, prepost$bveg, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$aplan, prepost$bplan, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$aglist.x, prepost$aglist.y, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$anfl, prepost$bnfl, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$acook, prepost$bcook, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$asnap, prepost$bsnap, data = prepost, paired = TRUE, conf.level=0.95)
t.test(prepost$apa, prepost$bpa, data = prepost, paired = TRUE, conf.level=0.95)
