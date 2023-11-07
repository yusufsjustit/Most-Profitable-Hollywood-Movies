getwd()
df <- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
apply(df, 2, function(x) sum(x == ""))
stri_rem
 View(df)
#install tidyverse package
install.packages("tidyverse")
#Import library
library(tidyverse)
#checks the data types
str(df)
#Step 2- Clean the data
#Check for missing values
colSums(is.na(df))

#find number of empty strings
map_int(df, function(x) sum(x == ""))

df[df==""]<-NA

df$Lead.Studio

colSums(is.na(df))


#find number of empty strings
map_int(df, function(x) sum(x == ""))

#Drop missing values
df1 <-na.omit(df)
colSums(is.na(df1))
View(df1)
rownames(df1) <- NULL
rownames(df1)
#check to make sure colSums row have been removed
#Summary Statistics
summary(df)
#Scatterplot
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))
#bar chart
ggplot(df, aes(x=Year)) + geom_bar()
write.csv(df1,"clean_df.csv")























