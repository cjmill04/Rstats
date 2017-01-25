### (1) Setting the working directory
setwd("~/Rstats/Rstats/02 - Data Storage in R")
getwd()
#old.dir <- ("~/Rstats/Rstats/02 - Data Storage in R")

### (2) Importing Data
data <- read.csv("HWA_Data.csv")
head(data)
rm(data)
CrawlerCount <- data$CrawlerCount
#CrawlerCount==0

###Exporting Data

#Character vectors
Point <- seq(1, 12) ##or 1:12
site <- c("A", "B", "C",
           "A", "B", "C",
           "A", "B", "C",
           "A", "B", "C")
Site <- rep(c("A", "B", "C"), 4)
Location <- rep(c("Edge", "Interior"), each=3, length=12)
  #####TNOOYO
Duration <- rep(c("5", "10"), each=6)

#Numeric vector
species_count <- c(12, 10, 13, 11, 13, 12, 19, 10, 12, 11, 21, 12)
logic <- species_count > 20 ##logical vector
  species_count[which(species_count > 20)]

###Factoring
SiteFactor <- factor(Site, levels = c("A", "B", "C"))
  #####TNOOYO
LocationFactor <- factor(Location, levels = c("Edge", "Interior"))
DurationFactor <- factor(Duration, levels = c("5", "10"))

###Creating a table
bird.table <- cbind(Point, Site, Location, Duration, species_count)

###Creating a data frame
as.data.frame(bird.table)
write.csv(bird.table, "bird.table.csv")

Birds <- data.frame(Point, Site, Location, Duration, species_count)
write.csv(Birds, "Bird_Data.csv")


