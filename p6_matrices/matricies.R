
## 参考サイト

# 行列に関する Tips 大全
# http://www.okadajp.org/RWiki/?%E8%A1%8C%E5%88%97Tips%E5%A4%A7%E5%85%A8

# 和訳
# matrix:　行列
# row:　行
# column:　列

## 行列
m1 <- matrix(1:10, nrow = 2)
m1
m2 <- matrix(1:10, nrow = 2, byrow = TRUE)
m2
m3 <- matrix(1:12,
             nrow = 3,
             ncol = 4,
             byrow = TRUE)
m3
m4 <- matrix(c(1, 0, 0, 1),
             nrow = 2,
             ncol = 2,
             byrow = TRUE)
m4

## 索引: オブジェクト名[row,column]
m3
m3[2, 3]
m3[3, ]
m3[, 3]
m3[2:3, ]　　
m3[, 2:3]
m3[, c(2, 4)]
m3[c(1, 2), c(3, 4)]

## 値を上書き
m3
m3[3, 4] <- 0
m3

## 名称を付ける
m5 <- matrix(1:9,
             nrow = 3,
             ncol = 3,
             byrow = TRUE)
rownames(m5) <- c("1st", "2nd", "3rd")
colnames(m5) <- c("first", "second", "third")
m5

rownames(m5) <- letters[1:3]　#a,b,c,...
colnames(m5) <- LETTERS[1:3]  #A,B,C,...
m5

## 演算 pt1
m5 + 3
m5 - 3
m5 / 3
m5 * 3

## 演算 pt2
m6 <- matrix(1:9,
             nrow = 3,
             ncol = 3,
             byrow = TRUE)
m5
m6
m5 + m6
m5 - m6
m5 / m6
m5 * m6 #行列の各要素の積
m5 %*% m6 #行列の積

## 転置行列: 行と列の入れ替え
m6
m7 <- t(m6)
m7

## 対角行列
m8 <- diag(nrow = 2, ncol = 2)
m8
m9 <- diag(c(4, 3, 2, 1), nrow = 4, ncol = 4)
m9

## 逆行列
m6
solve(m6)
m6 %*% solve(m6) #単位行列

## 行列式
det(m6)

