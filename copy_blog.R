fix_rss <- function(){
  
  rss <- "c:/repos/remkoduursma.github.io/blog/index.xml"
  r <- readLines(rss, warn=FALSE)
  for(i in 1:length(r)){
    r[i] <- gsub("<link>", "<link>/blog", r[i])
  }
  writeLines(r, rss)
  
}