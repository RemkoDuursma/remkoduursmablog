copy_blog <- function(){
  
  fn <- dir("public", full.names = TRUE, recursive = TRUE)  
  
  ii <- file.copy(fn, "c:/repos/remkoduursma.github.io/blog", overwrite=TRUE)
  
  rss <- "c:/repos/remkoduursma.github.io/blog/index.xml"
  r <- readLines(rss, warn=FALSE)
  for(i in 1:length(r)){
    r[i] <- gsub("<link>", "<link>/blog", r[i])
  }
  writeLines(r, rss)
  
return(all(ii))
}
