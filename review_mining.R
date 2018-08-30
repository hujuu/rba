library(RMeCab)
library(dplyr)

# 半角記号の正規表現
#[ -/:-@\[-~]
# 半角数字の一文字
#[0-9]
# 半角英字アルファベットの一文字
#[a-zA-Z]
dat <- read.csv("review_rakuraku_add.csv", head = T)
res <- docMatrixDF(dat[,"レビュー本文"], minFreq = 1, pos = c("名詞"))
res <- res[rowSums(res) >= 3,] # 全文書を通して 2 回以上出現したターム
res <- res[-grep("[ -~/:;@~<=>?,，・｢｣0-9]", row.names(res)),]
str(res)
res[,1]
