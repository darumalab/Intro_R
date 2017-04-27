## 参考サイト

# ベクトルに関する Tips 大全
# http://www.okadajp.org/RWiki/?%E3%83%99%E3%82%AF%E3%83%88%E3%83%ABTips%E5%A4%A7%E5%85%A8

## ベクトルの作成
a <- c(1, 2, 3, 4, 5)
b <- c("dog", "cat", "bee")
c <- c(TRUE, FALSE, TRUE)

x <- 1:5
y <- 5:1
z <- -5:5

# 和訳
# seq() - sequence: 数列
# rep() - replicate: 複製する

?seq() #関数のヘルプドキュメント
seq(from = 1, to = 5, by = 1)
seq(from = 1, to = 5, by = 0.5)
seq(from = 1, to = 5, by = 1 / 2)

?rep()
rep(1, times = 5)
rep(c(1, 3, 5), times = 5)
rep("dog", times = 5)
rep(c("dog", "cat"), times = 5)
rep(TRUE, times = 5)
rep(c(FALSE, TRUE), times = 5)

## ベクトルの要素の数を調べる
length(y)

## ベクトルの要素にアクセスする
y[2]
y[c(1, 3)]  #複数の要素にアクセス
y[-c(1, 3)]

## 演算 pt1
z <- -5:5
z + 2
z - 2
z * 2
z / 2
z ^ 2
sqrt(z) #平方根

x <- c(1, 3, 5)
y <- c(2, 4, 6)
x + y
x - y
x * y
x / y

## 演算 pt2
# 要素の数（長さ）の違うベクトルでは、
# 長いベクトルに合わせて短いベクトルが再利用される
x <- c(1, 3, 5)
z <- c(1, 2, 3, 4, 5, 6)
z + x
z - x
