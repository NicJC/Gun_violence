# Gun_violence
US Mass Shootings

[data](https://raw.githubusercontent.com/NicJC/Gun_violence/main/guns.csv)

R Code to create the below graph:

---
       guns %>% 
       select(c(1,2,3,6,7)) %>%   ggplot() +
  
       geom_point(mapping = aes(x = as.factor(guns$State) , y = guns$`Victims Killed` , col = as.factor(State))) + 
       labs(title = "Gun Violence" , color = "State" , y = "Victims Killed" , x = "State") + 
       theme(axis.text.x = element_text(face="bold", color="black", 
                                   size=12, angle=90),
       axis.text.y = element_text(face="bold",  color="black", 
                                   size=12))+ 
       theme(text = element_text(size = 18))
---

![](https://github.com/NicJC/Gun_violence/blob/main/Victims%20by%20State.png)
