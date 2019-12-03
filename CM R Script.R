#Load in excel workbooks and transform to tibbles.
Cooking_Matters_Combined_Data <-read_excel("/Users/hannashephard/Desktop/SNAP-Ed_CM_2019.xlsx", sheet = 1)
CM_data<-as_tibble(Cooking_Matters_Combined_Data)

#Run frequencies.
lapply(CM_data, function(x) prop.table(table(x)))

