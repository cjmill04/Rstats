###Setting the working directory
setwd("~/Rstats/Rstats/02 - Data Storage in R")
getwd()

###Importing Data
data <- read.csv("HWA_Data.csv")
head(data)
#rm(data)
Day <- data$Day

##Learning about vectors
Point <- seq(1,12)
point <- 1:12

#Character vectors
site <- c("A", "B", "C",
          "A", "B", "C",
          "A", "B", "C",
          "A", "B", "C")
Site <- rep(c("A", "B", "C"), 4)
Location <- rep(c("Edge", "Interior"), each=3, length=12)

Duration <- rep(c("5", "10"), each=6, length=12)

#Numeric vectors
species_count <- c(12, 10, 13, 11, 13, 12, 19, 10, 12, 11, 21, 12)
length(species_count)

#Logical vector
logic <- species_count > 20
 species_count[which(species_count >20)]

###Factors
 SiteFactor <- factor(Site, levels = c("A", "B", "C"))
 LocationFactor <- factor(Location, levels = c("Edge", "Interior"))
 DurationFactor <- factor(Duration, levels = c("5", "10"))
 
 ###Creating a table
 bird.table2 <- cbind(Point, Site, Location, Duration, species_count)
 as.data.frame(bird.table2)
 
 write.csv(bird.table2, "bird.table2.csv")
 
 ###Exporting a data frame
 Birds <- data.frame(Point, Site, Location, Duration, species_count)
 write.csv(Birds, "Birds.csv")
 
 last.row <- c (13, "A", "Edge", "10", 39)
 is.numeric(last.row)
 is.character(last.row)
 is.character(Duration)
 
 birds2 <- rbind(bird.table2, last.row)
 