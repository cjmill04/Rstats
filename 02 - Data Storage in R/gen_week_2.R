setwd("~/UCONN Spring 2017/Rstats2/Rstats/02 - Data Storage in R")

## Import Data
data<-read.csv("HWA_Data.csv")

Day<-data$Day

Point<-seq(1,12)
point<-1:12

CrawlerCount <- data$CrawlerCount

Point <- seq(1, 12) ##or 1:12
site <- c("A", "B", "C",
          "A", "B", "C",
          "A", "B", "C",
          "A", "B", "C")
Site <- rep(c("A", "B", "C"), 4)
Location <- rep(c("Edge", "Interior"), each=3, length=12)

duration<-rep(c("5","10"), each=6)
duration

# Numeric vectors

speciescount<-c(12, 10, 13, 11, 13, 12, 19, 10, 12, 11, 21, 12)
speciescount                

length(speciescount)

## Logical vectors

logic<-speciescount>20
speciescount[which(speciescount>20)]

sitefactor<-factor(Site, levels=c("A","B","C"))
sitefactor

locationfactor<-factor(Location,levels=c("Edge","Interior"))

durationfactor<-factor(duration, levels=c("5","10"))

## Create table

bird.table<-cbind(Point, Site, Location, duration,speciescount)
birddf<-as.data.frame(bird.table)

write.csv(birddf,"birddf.csv")

## export dataframe]]

Birds<-data.frame(Point, Site, Location, duration,speciescount)

write.csv(Birds,"birdtable.csv")

last.row<-c(13,"A","Edge","10",39)
birds2<-rbind(bird.table,last.row)
last.row<-c(13,"A","Edge",10,39)

