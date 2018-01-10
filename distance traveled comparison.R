#### 



library(ggplot2)
library(ggthemes)
library(scales)



mode <-c("Car", "Translink", "Bike")
distance <-c(13000,6240,4259)


modeoftravel <-data.frame(mode,distance)

str(modeoftravel)



ggplot(modeoftravel, aes(x=reorder(mode,distance), y=distance)) +
  geom_bar(aes(fill=distance),stat="identity") +
  coord_flip() +
  theme_igray()