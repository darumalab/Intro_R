## 数値データ
num <- 7

## オブジェクトが数値データなのかチェック
is.numeric(num)
class(num)

## オブジェクトが整数なのかチェック
is.integer(num)
num2 <- 7L
is.integer(num2)

## 文字列データ
char <- "テキスト"
char2 <- factor("テキスト") #文字列をファクターとして保存

## オブジェクトが文字列データなのかチェック
is.character(char)
class(char)

## 論理データ
logi <- TRUE
logi2 <- FALSE
logi3 <- NA

## オブジェクトが論理データなのかチェック
is.logical(logi)

## 日付データ
date <- as.Date("YYYY-MM-DD") #例:2017-04-15
date2 <- as.POSIXct("YYYY-MM-DD 00:00")

## オブジェクトが日付データなのかチェック
class(date)
