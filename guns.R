
library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)
library(data.table)



guns <- fread("C:/R/Mass_Shootings.csv")




guns %>% 
  select(c(1,2,3,6,7)) %>%   ggplot() +
  
  geom_point(mapping = aes(x = as.factor(guns$State) , y = guns$`Victims Killed` , col = as.factor(State))) + 
  labs(title = "Gun Violence" , color = "State" , y = "Victims Killed" , x = "State") + 
  theme(axis.text.x = element_text(face="bold", color="black", 
                                   size=12, angle=90),
        axis.text.y = element_text(face="bold",  color="black", 
                                   size=12))+ 
  theme(text = element_text(size = 18)) +
 # scale_y_continuous(n.breaks = 8)

ggsave("Victims by State.png", width = 15, height = 13)



write.csv(guns,"guns.csv",row.names=FALSE)