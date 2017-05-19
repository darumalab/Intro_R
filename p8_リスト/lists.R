## リストの作成
MyList <- list(1:5, c("dog", "cat", "bee"), c(TRUE, FALSE))
MyList
str(MyList)

a <- 1:3
b <- c("dog", "cat", NA)
c <- c(TRUE, TRUE, FALSE)
d <- data.frame(a, b, c)
MyList2 <- list(a, b, c, d)
MyList2
str(MyList2)

## リストの名前
names(MyList2)
MyList2 <- list(
  first = a,
  second = b,
  third = c,
  forth = d
)
names(MyList2) <- c("first", "second", "third", "forth")
str(MyList2)
MyList2

##　リストの成分へアクセス
MyList2$first
MyList2$second
MyList2[[1]]
MyList2[[2]]
MyList2[["first"]]
MyList2[["second"]]

MyList2$first[2]
MyList2[[2]][2:3]
MyList2[["second"]][c(1, 2)]

MyList2$first[2] <- 99

## リストに新しい成分を加える
MyList2[[5]] <- 1:10

## リストの成分削除
MyList2[[5]] <- NULL

