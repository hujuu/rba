library(ggplot2) # ライブラリの読み込み

# データの読み込み(ディレクトリは適宜、使用環境によって修正してください)
data <- read.csv("rba/20161002_rba_4/auction.csv",header=TRUE)

# 値の大きさによってプロットの点の大きさを変えた散布図
ggplot(data, aes(x=amount, y=rate, size=amount)) +
  geom_point(alpha=0.9) +
  scale_color_discrete() +
  coord_cartesian()
