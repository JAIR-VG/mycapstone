dataclean <- function(datatext)
{
  
  datatext <- Corpus(VectorSource(datatext))
  datatext <- tm_map(datatext,tolower)
  datatext <- tm_map(datatext,removePunctuation)
  datatext <- tm_map(datatext,removeWords, stopwords("english"))
  datatext <- tm_map(datatext,stripWhitespace)
  
  datatext<-datatext$content
  
  datatext <- gsub("@\\w+", "", datatext)
  datatext <- gsub("https?://.+", "", datatext)
  datatext <- gsub("\\d+\\w*\\d*", "", datatext)
  datatext <- gsub("#\\w+", "", datatext)
  datatext <- gsub("[^\x01-\x7F]", "", datatext)
  datatext <- gsub("[[:punct:]]", " ", datatext)
  
  datatext <- gsub("\n", " ", datatext)
  datatext <- gsub("^\\s+", "", datatext)
  datatext <- gsub("\\s+$", "", datatext)
  datatext <- gsub("\\s+", "", datatext)
  datatext <- gsub("[ |\t]+", " ", datatext)
}
  