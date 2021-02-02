
# generate a 6.6 grid html
x <- list.files("../img-grid/")
x <- sample(x) # shuffle
i <- 0
cat("\f")
cat('<div class="row">\n')
#cat('\t<div class="col-md-2">&nbsp;</div>\n\n')
cat('\t<div class="col-md-2">\n')
for(loc in x) {
  i <- i+1
  str <- paste0('\t\t<img width="200" height="200" src="./img-grid/',loc, '">')
  cat(str)
  cat("\n")
  if(i %% 6 == 0 & i < length(x)) {
    cat('\t</div>\n\n\t<div class="col-md-2">\n')
  }
} 
cat('\t</div>\n\n')
#cat('\t<div class="col-md-2">&nbsp;</div>\n')
cat('</div>')



# # generate a 9x4 grid html
# x <- list.files("../img-grid/")
# i <- 0
# cat("\f")
# cat('<div class="row">\n')
# cat('\t<div class="col-md-2">&nbsp;</div>\n\n')
# cat('\t<div class="col-md-2">\n')
# for(loc in x) {
#   i <- i+1
#   str <- paste0('\t\t<img width="200" height="200" src="./img-grid/',loc, '">')
#   cat(str)
#   cat("\n")
#   if(i %% 9 == 0 & i < length(x)) {
#     cat('\t</div>\n\n\t<div class="col-md-2">\n')
# }
# } 
# cat('\t</div>\n\n')
# cat('\t<div class="col-md-2">&nbsp;</div>\n')
# cat('</div>')
