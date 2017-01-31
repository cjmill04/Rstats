library(dplyr)

#Load data
HWAdata <- read.csv("~/Documents/Rstats/02 - Data Storage in R/HWA_Data.csv")
head(HWAdata)

#Filtering datasets
CAWAdata <- filter(HWAdata, BirdID=="CAWA")
highcrawlers <- filter(HWAdata, CrawlerCount >= 3)
highcrawlers

BLBWcrawlers <- filter(HWAdata,BirdID=="BLBW" & CrawlerCount >3)
BLBWcrawlers

#selecting columns
HWAdata <- select(HWAdata, DensClass, Height..m., BirdID, Ovisacs, CrawlerCount)
HWAdata

#Mutate data
HWAdata <- mutate(HWAdata, height.ft = (Height..m.*3.28084))
HWAdata

m2f <- function(m) {
  f <- m*3.28084 
return(f)}

HWAdata <- mutate(HWAdata, height.ft2 = m2f(Height..m.))
head(HWAdata)

#Summarizing data
meancrawlers <- summarize(HWAdata, mean(CrawlerCount, na.rm=TRUE))
meancrawlers

#Grouping data
crawlers.by.species <- summarize(group_by(HWAdata, BirdID), mean(CrawlerCount, na.rm=TRUE))
crawlers.by.species

med.crawlers.by.species <- summarize(group_by(HWAdata, BirdID), median(CrawlerCount))
med.crawlers.by.species

#Arranging (sorting) data rows
HWAdata <- arrange(HWAdata, BirdID, CrawlerCount)
HWAdata

#Counting data
count.birds <- count(HWAdata, BirdID)
count.birds

count.bird.crawlers <- count(HWAdata, BirdID, CrawlerCount)
count.bird.crawlers

#sampling randomly
sample <- sample_n(HWAdata, size=30)
sample

sample.percent <- sample_frac(HWAdata, size=.01)
sample.percent

#piping is when you put all your code into one command with %>%
#let's say we want to filter HWAdata to only include COYE, then we want to group it by density class, then we want to summarize the mean crawler counts

filtered <- filter(HWAdata, BirdID=="COYE")
grouped <- group_by(filtered, DensClass)
summarize <- summarize(grouped, mean(CrawlerCount, na.rm=TRUE))

COYEcrawlers <- HWAdata %>%
  filter(BirdID=="COYE") %>%
  group_by(DensClass) %>%
  summarize(mean(CrawlerCount, na.rm=TRUE))
COYEcrawlers


#using tidyr
#tidyr assumes each row is an observation, each column a variable
library(tidyr)
point.counts <- data.frame(bird = c("OVEN", "RBGR", "ALFL"),
                           siteA = c(34, 12, 8),
                           siteB = c(14, 16, 28)
                           )
point.counts

pc.gath <- point.counts %>% gather(site, count, siteA:siteB)
pc.gath

pc.spread <- pc.gath %>% spread(site, count)
pc.spread

pc.unite <- point.counts %>% unite(total, siteA, siteB)
pc.unite

pc.sep <- pc.unite %>% separate(total, into=c("siteA", "siteB"))
pc.sep


#transposing data
t(pc.sep)
