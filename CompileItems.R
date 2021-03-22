# Compile items

# install.packages("exams", dependencies = TRUE)
library(exams)
ItemRmdPath = "example/uva-test-en-001.Rmd" # Select the path to your file
DirPath     = substr(ItemRmdPath, 1, rev(gregexpr('/',ItemRmdPath)[[1]])[1] )
saveHTML    = paste0(substring(ItemRmdPath, nchar(DirPath)+1, nchar(ItemRmdPath)-4))

exams2html(file = ItemRmdPath, dir = DirPath, name = saveHTML)


