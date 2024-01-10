df = cardio_train %>% mutate(age = round(age/365))
View(df)
#Whether older age is a reason for cardiovascular disease
ggplot(df,aes(x=age,fill = factor(cardio)))+geom_histogram(color = "black")
#From the plot we can say that people above the age of 55 years are more prone to cardiovascular disease


ggplot(df,aes(x=smoke,y=cardio))+geom_bar(stat = "identity")

cor(df)
corrplot(df,method="pie")
corrplot(df,method="color")

ggplot(df,aes(x=cholesterol,y=alco))+geom_bar(stat = "identity")

df$gender=ifelse(df$gender==1,"Male","Female")
View(df)

#Is there a gender bias for CVD considering smoking
ggplot(df,aes(x=gender,y=smoke,fill=factor(cardio)))+geom_bar(stat="identity")

#From the plot we can say that smoking among female is more common than male
#hence probability of getting a CVD is high for female than male

df =df %>%  mutate(bmi=(weight*10000)/(height*height))
View(df)
cor(df$bmi,df$cardio)






