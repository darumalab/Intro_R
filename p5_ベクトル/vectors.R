## 参考サイト

# ベクトルに関する Tips 大全
# http://www.okadajp.org/RWiki/?%E3%83%99%E3%82%AF%E3%83%88%E3%83%ABTips%E5%A4%A7%E5%85%A8

## ベクトルの作成
a <- c(1, 2, 3, 4, 5)
a
b <- c("dog", "cat", "bee")
b
c <- c(TRUE, FALSE, TRUE)
c

x <- 1:5
x
y <- 5:1
y
z <- -5:5
z

# 和訳
# seq() - sequence: 数列
# rep() - replicate: 複製する

?seq() #関数のヘルプドキュメントを開く
seq(from = 1, to = 5, by = 1)
seq(from = 1, to = 5, by = 0.5)
seq(from = 1, to = 5, by = 1 / 2)

rep(1, times = 5)
rep(c(1, 3, 5), times = 5)
rep("dog", times = 5)
rep(c("dog", "cat"), times = 5)
rep(TRUE, times = 5)
rep(c(FALSE, TRUE), times = 5)

## ベクトルの要素の数を調べる
length(x)
length(rep(1, times = 3))

## ベクトルの要素にアクセスする
y[2]
y[c(1, 3)]  #c()で複数の要素にアクセス
y[-c(1, 3)] #-c()で複数の要素を取り除く
y[y < 4]

## 演算 pt1
z + 2
z - 2
z * 2
z / 2
z ^ 2
sqrt(z) #平方根

x1 <- c(1, 3, 5)
y1 <- c(2, 4, 6)
x1 + y1
x1 - y1
x1 * y1
x1 / y1

## 演算 pt2
# 要素の数（長さ）の違うベクトルでは、
# 長いベクトルに合わせて短いベクトルが再利用される
x2 <- c(1, 3, 5)
z2 <- c(1, 2, 3, 4, 5, 6)
z2 + x2
z2 - x2
