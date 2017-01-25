##Setting the working directory
setwd("~/HWA_Research/Data")
getwd()
HWA <- getwd()

##Importing Data
data <- read.csv("HWA_Data.csv", header=TRUE)

Crawlers <- data$
## using count.fields to handle unknown maximum number of fields
## when fill = TRUE
test1 <- c(1:5, "6,7", "8,9,10")
tf <- tempfile()
writeLines(test1, tf)

read.csv(tf, fill = TRUE) # 1 column
ncol <- max(count.fields(tf, sep = ","))
read.csv(tf, fill = TRUE, header = FALSE,
         col.names = paste0("V", seq_len(ncol)))
unlink(tf)
