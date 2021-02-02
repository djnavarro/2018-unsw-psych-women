x <- read.csv("./bios.csv",stringsAsFactors = FALSE)
np <- dim(x)[1]

# get surname in a very hacky way
n <- x$name
n <- gsub("Drs","",n,fixed=TRUE)
n <- gsub("Dr","",n,fixed=TRUE)
n <- gsub("Associate","",n,fixed=TRUE)
n <- gsub("Professor","",n,fixed=TRUE)
n <- gsub(",.*","",n)
n <- gsub("and.*","",n)
n <- gsub(" *$","",n)
n <- gsub("^.* ","",n)
ord <- order(n,decreasing = FALSE)

# sort
x <- x[ord,]

i <- 0
cat("\f")

#cat('<div class="container">\n\n')
for(p in 1:np) {
  
  #if(p %% 2 == 0) {
  
    pstr <- paste0("<p align='left'><span class='profile-name'>",x$name[p],"</span><br><span class='profile-text'>", x$text[p], "</span></p>")
    
    cat('<div class="row">\n') 
    cat('\t<div class="col-md-2">&nbsp;</div>\n')
    cat(paste0('\t<div class="col-md-3"><img width="200" height="200" src="./img-grid/',x$img[p],'"></div>\n')) # img left
    cat(paste0('\t<div class="col-md-6">',pstr,'</div>\n'))
    cat('\t<div class="col-md-1"><br><br></div>\n')
    cat('</div>\n')
    
  # } else if( p %% 2 == 1) {
  #   
  #   pstr <- paste0("<p align='right'><span class='profile-name'>",x$name[p],"</span><br>", x$text[p], "</p>")
  #   
  #   cat('<div class="row">\n') 
  #   cat('\t<div class="col-md-1">&nbsp;</div>\n')
  #   cat(paste0('\t<div class="col-md-6">',pstr,'</div>\n'))
  #   cat(paste0('\t<div class="col-md-3"><img width="200" height="200" src="./img-grid/',x$img[p],'"></div>\n')) # img right
  #   cat('\t<div class="col-md-2">&nbsp;</div>\n')
  #   cat('</div>\n')
  #   
  # }
  
    
  cat('<div class="row"><br><br></div>\n\n') 
  
} 
#cat('\n</div>')
