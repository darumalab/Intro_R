x <- NA

## ベクトル
num <- c(1, 2, 3, NA)
str <- c("dog", "cat", NA, "bee")
logi <- c(TRUE, NA, FALSE, TRUE)

## データのタイプ
mode(num)
mode(str)
mode(logi)

## NA(欠損値)の検出
is.na(num)  #または!is.na(num)
is.na(str)
is.na(logi)

## NAのインデックス:
which(is.na(num))  #which()でTRUEのインデックスを検出
which(is.na(str))
which(is.na(logi))

## ベクトルからNAを取り除く
num <- num[!is.na(num)]
