##setting the working directory
setwd("~/Rstats/02 -Data Storage in R")
getwd()
##importing data
data <- read.scv("HWA_Data.csv")
data <- read.csv("HWA_Data.csv")
head(data)
Day <- data$Day
##Learning about vectors
Point <-seq(1,12)

#character vectors
site <-c("A", "B","C",
         "A", "B","C",
         "A", "B","C")
site <- rep(c("A","B", "c"), 4)
Location <- rep(c("Edge", "Interior"), each =3, length =12)
Location
Duration <-rep(c("5","10"), each = 2, length =12)
Duration <-rep(c("5","10"), each =6)

#Numeric vectors
species_count <- c(12, 10, 13, 11, 13, 12, 19, 10, 12, 11, 21, 12)
species_count

#Logical Vector
logic <- species_count > 20
species_count(which(species_count_20>20))
species_count(which(species_count > 20))

##Factors
SiteFactor <- factor(Site), levels =3)
SiteFactor <- factor(Site, levels =3)
SiteFactor <- factor(site, levels =c("A","B", "C"))
LocationFactor <- factor(Location, levels = c("Edge", "Interior"))
DurationFactor <- factor (Duration, levels = c("5", "10"))
SiteFactor

#create a table
bird.table2 <- cbind(Point, site, Location, Duration, species_count)
as.data.frame(bird.table2)

#export csv file
write.csv(bird.table2, "bird.table2.csv")

#exporting a data frame
Birds <- data.frame(Point, site, Location, Duration, species_count)

write.csv(Birds, "Birds2.csv")
