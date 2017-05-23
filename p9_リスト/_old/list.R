## リストの作成
MyList <- list(1, "dog", TRUE)
MyList
str(MyList)

MyList2 <- list(1:3, c("dog","cat","bee"))
MyList2
str(MyList2)

a <- 1:3
b <- c("dog", "cat", NA)
c <- c(TRUE, TRUE, FALSE)
d <- data.frame(a, b, c)
MyList3 <- list(a,b,c,d)
MyList3
str(MyList3)

## リストの名前
names(MyList3)
MyList3 <- list(first = a, second = b, third = c, forth = d)
names(MyList3) <- c("first", "second", "third", "forth")
MyList3

##　リストの成分へアクセス
MyList3$first
MyList3$second

MyList3[[1]]
MyList3[[2]]

MyList3$first[2]
MyList3$second[2:3]
MyList3$second[c(1,2)]

MyList3[[1]][2]
MyList3[[2]][2:3]
MyList3[[2]][c(1,2)]

## リストの成分内にある欠損値以外の要素
MyList3$second[!is.na(MyList3$second)]
MyList3[[2]][!is.na(MyList3$second)]
