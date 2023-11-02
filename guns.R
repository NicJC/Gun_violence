
library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)



guns <- read_csv("C:/R/Mass_Shootings.csv")




#guns %>% 
 # filter(data_year > 2007) %>% 
  #ggplot() +
  #geom_point(mapping = aes(x =  data_year , y = victim_count , col  = as.factor(data_year))) + 
  #labs(title = "Victims by Year" , col = "Year" , x = "Year" , y = "Victims" , subtitle = "Increase in violence by years") +
 # scale_x_continuous(n.breaks = 8) +
 # scale_y_continuous(n.breaks = 8)

#ggsave("Victims by Year.png", width = 6, height = 6)



write.csv(guns,"guns.csv",row.names=FALSE)