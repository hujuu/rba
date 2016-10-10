library(ggplot2) # ライブラリの読み込み

# データの読み込み(ディレクトリは適宜、使用環境によって修正してください)
data <- read.csv("rba/20161002_rba_4/auction.csv",header=TRUE)

head(data)

# 値の大きさによってプロットの点の大きさを変えた散布図
sp <- ggplot(data, aes(x=amount, y=rate, size=amount)) +
  geom_point(alpha=0.9) +
  scale_color_discrete() +
  coord_cartesian()
sp

# 各点にラベルを付ける
sp + geom_text(aes(y = rate+.9, label=artist), size = 4, vjust=0)
