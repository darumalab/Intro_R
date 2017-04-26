2 + 2
.Last.value

## オブジェクトの作成
x <- 2 + 2
x
y <- 5 * 5
y
myname <- "Joe"
myname

## 作成したオブジェクト名を確認
objects()
ls()

## ワーキングディレクトリ
getwd() #確認
setwd("") #変更

## オブジェクトの保存
save(x, y, myname, file = "ファイル名.RData") #x,y,mynameを保存

## オブジェクトの読み込み
load("ファイル名.RData")

## オブジェクトの削除
rm(x) #xを削除
rm(x, y) #x,y,mynameを削除
rm(list = objects()) #全て削除
