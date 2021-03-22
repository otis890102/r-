library(ggplot2)
library(plotly)
library(quantmod)
library(data.table)

data1 <- getSymbols("2330.TW",auto.assign = FALSE)
#temp = as.data.frame(`2330.TW`)
#temp

data.table("date" = index(data1), coredata(data1)) 

y <- ggplot(data1,aes(index(data1)))  + xlab("year") + ylab("price")

ggplotly(y)

