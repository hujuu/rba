library(ggplot2)
data <- read.csv("rba/20161002_rba_4/auction.csv",header=TRUE)

ggplot(data, aes(x=amount, y=rate, size=amount)) +
  geom_point(alpha=0.9) +
  scale_color_discrete() +
  coord_cartesian()
