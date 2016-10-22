# install.packages("ggplot2")
# install.packages("plyr")
library(ggplot2)
library(plyr) # load revalue()

# basic hist
data <- read.csv(file("rba/20160904_rba_3/ggplot2_intro/office.csv",
                      encoding='Shift_JIS'))

ggplot(data, aes(x = office)) + geom_histogram()

# Draw separately the two histograms
ggplot(data, aes(x = office)) +
  geom_histogram(binwidth = 150, fill = "white", color = "black") +
  facet_grid(division ~ .)

# To convert to factor
data$division <- factor(data$division)
levels(data$division)

# Name the factor
data$division <- revalue(data$division, c("0"="Wholesale", "1"="retail"))

# To draw over multiple histogram
ggplot(data, aes(x = office, fill = division)) +
  geom_histogram(binwidth = 150, position = "identity", alpha = 0.4)

# ex:design theme changes
## install.packages("ggthemes")
require(ggthemes)
g <- ggplot(data, aes(x = office, fill = division)) +
  geom_histogram(binwidth = 150, position = "identity", alpha = 0.4)
g
g + theme_wsj()
g + theme_tufte()
g + theme_economist()
g + theme_excel()
g + theme_solarized_2()
