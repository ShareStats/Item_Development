# Compile items

# install.packages("exams", dependencies = TRUE)
library(exams)
ItemRmdPath = "example/test1/uva-test-en-001.Rmd" # Select the path to your file
DirPath     = substr(ItemRmdPath, 1, sapply(gregexpr("/", ItemRmdPath), tail, 1) )
saveHTML    = paste0(substring(ItemRmdPath, nchar(DirPath)+1, nchar(ItemRmdPath)-4))

exams2html(file = ItemRmdPath, dir = DirPath, name = saveHTML)