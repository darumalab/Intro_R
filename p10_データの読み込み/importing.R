## CSVファルの読み込み
dat1 <- read.table(file = file.choose(), header = TRUE, sep = ",")

## タブ区切りファイルの読み込み
dat2 <- read.table(file = file.choose(), header = TRUE, sep = "\t")

## URLからデータを読み込み
datPath <- ""
dat3 <- read.table(file = datPath, header = TRUE, sep = ",")

# 日本語のファイルを読み込む時にエラーが発生する場合
dat1 <- read.table(file = file.choose(), header = TRUE, sep = ",", fileEncoding="CP932")

# CSVファイルの書き出し
datPath <- ""
write.csv(dat1, file = datPath, row.names =FALSE)
