reading_loading <- function(namefile)
{
  con = file(namefile, "r")
  while (TRUE){
    line=readLines(con,n=1)
    if (length(line) == 0)
      break
    print(line)
  }
  close(con)
}