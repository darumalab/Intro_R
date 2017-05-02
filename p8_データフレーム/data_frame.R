## 参考サイト

# データフレーム Tips 大全
# http://www.okadajp.org/RWiki/?%E3%83%87%E3%83%BC%E3%82%BF%E3%83%95%E3%83%AC%E3%83%BC%E3%83%A0Tips%E5%A4%A7%E5%85%A8#t96e2dd9

# 和訳
# observation, observed value:　観測値
# variable:　変数

## ベクトル
a <- 1:10
b <- c("たま", "しろ", "くろ", "みけ", "ぶち", "ぽち", "ころ", NA, "じろ", "わん")
c <- c("猫", "猫", "猫", "猫", "猫", "犬", "犬", "犬", "犬", "犬")
d <- rep(c("♂", "♀"), times = 5)

## データフレーム
dat <- data.frame(a, b)
dat <- data.frame(年齢 = a, 名前 = b)
dat <- data.frame(年齢 = a, 名前 = b, 種 = c, 性別 = d, stringsAsFactors = FALSE)

## 変数の名前
names(dat)
names(dat)[2]
names(dat)[2] <- "呼び名"

## データのチェック
head(dat)
head(dat, n = 3)  #n:行数
tail(dat)
tail(dat, n = 3)

## データのタイプをチェック
class(dat)
str(dat)

## 個別のベクトルへアクセス
dat$年齢
class(dat$呼び名)
class(dat$年齢)

## データフレーム内の要素へアクセス
dat[2, 3]
dat[3,]
dat[, 3]
dat[2:3, ]
dat[1, 2:3]
dat[c(2, 4),]
dat[, "呼び名"]
dat[, c("呼び名", "年齢")]

dat[2, 2] <- "こじろう"  #値を上書き
dat[is.na(dat$呼び名), ]  #欠損値を含む行
dat[dat$年齢 < 5, ]  #年齢が５歳以下のサンプル
dat[dat$呼び名　 %in% c("ころ", "じろ"), c(2, 4)]

## 個別のベクトルを抽出
dat2 <- dat$呼び名
class(dat2)

## データフレーム内にある個別のベクトルをデータフレームとして抽出
dat2 <- dat[, "呼び名", drop = FALSE]
class(dat2)
