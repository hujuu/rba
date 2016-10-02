#ファイルの読み込み
dat <- read.csv("clust.csv",header=T,row.names=1)

#分析用データフレームに対する正規化の実施
data.scale <- scale(dat)　#正規化：各変量を平均が0、分散が1となるよう変換

#データ間の距離を計算
data.dist <- dist(data.scale, method="euclidean")

#生成されたデータの距離行列を確認
data.dist

#ウォード法による階層的クラスタ分析を実施
ward.hclust <- hclust(data.dist, method="ward.D2")

#ウォード法による階層的クラスタ分析の結果をデンドログラムで表示
plot(ward.hclust, hang=-1)
# 引数hang=-1はラベルの高さを揃える。

#2～9個のクラスタに分割
ward.cutree <- cutree(ward.hclust, k=2:9)

#cutreeの分割結果を表示
ward.cutree





