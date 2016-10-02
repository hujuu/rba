#  ファイルの読み込み
dat <- read.csv("lm.csv",header=TRUE)

#　pairs(散布図行列) で各列同士の組合せ全てについて散布図を描く
pairs(dat)

#　lm関数で重回帰モデルを作成
(dat.lm<-lm(Rev~.,data=dat))

#　重回帰モデルの結果を確認する
summary(dat.lm)

#　step関数によるモデル選択
dat.lm.stepped<-step(dat.lm)

#　再度重回帰モデルを確認する
summary(dat.lm.stepped)
