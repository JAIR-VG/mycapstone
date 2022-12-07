library(NLP)
library(tm)
library(stringi)
library(wordcloud)
library(ggplot2)

con = file("en_US.blogs.txt", "r")
linblogs =readLines(con)
con = file("en_US.news.txt", "r")
linnews =readLines(con)
con = file("en_US.twitter.txt", "r")
lintwitter =readLines(con)
close(con)

lintwitter <- dataclean(lintwitter)
linblogs <- dataclean(linblogs)
linnews <- dataclean(linnews)

print(linblogs)

