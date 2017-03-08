library(readr)
library(RJSONIO)

results <- data.frame(city=character(), dissimilarity= double(), interaction= double(),clustering= double(), stringsAsFactors=FALSE)

### Baltimore

baltimore <- read_csv("data/prepped/baltimore_race.csv")
sum <- sum(baltimore$pop)
sum.n.w <- sum(baltimore$pop.not.white)
sum.w <- sum(baltimore$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
baltimore.dissimilarity <- (sum(baltimore$pop * abs(baltimore$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
baltimore.interaction <- sum((baltimore$pop.not.white / sum.n.w) * (baltimore$pop.white / baltimore$pop))

# Caluculate relative clustering
baltimore.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
baltimore.difference <- sum(abs(baltimore$pct.not.white - baltimore$pct.white)) / length(baltimore$GEOID)

row <- data.frame(city = "baltimore", dissimilarity = baltimore.dissimilarity, interaction = baltimore.interaction, clustering = baltimore.clustering, difference = baltimore.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### charleston

charleston <- read_csv("data/prepped/charleston_race.csv")
sum <- sum(charleston$pop)
sum.n.w <- sum(charleston$pop.not.white)
sum.w <- sum(charleston$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
charleston.dissimilarity <- (sum(charleston$pop * abs(charleston$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
charleston.interaction <- sum((charleston$pop.not.white / sum.n.w) * (charleston$pop.white / charleston$pop))

# Caluculate relative clustering
charleston.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
charleston.difference <- sum(abs(charleston$pct.not.white - charleston$pct.white)) / length(charleston$GEOID)

row <- data.frame(city = "charleston", dissimilarity = charleston.dissimilarity, interaction = charleston.interaction, clustering = charleston.clustering, difference = charleston.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### chicago

chicago <- read_csv("data/prepped/chicago_race.csv")
sum <- sum(chicago$pop)
sum.n.w <- sum(chicago$pop.not.white)
sum.w <- sum(chicago$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
chicago.dissimilarity <- (sum(chicago$pop * abs(chicago$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
chicago.interaction <- sum((chicago$pop.not.white / sum.n.w) * (chicago$pop.white / chicago$pop))

# Caluculate relative clustering
chicago.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
chicago.difference <- sum(abs(chicago$pct.not.white - chicago$pct.white)) / length(chicago$GEOID)

row <- data.frame(city = "chicago", dissimilarity = chicago.dissimilarity, interaction = chicago.interaction, clustering = chicago.clustering, difference = chicago.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### columbus

columbus <- read_csv("data/prepped/columbus_race.csv")
sum <- sum(columbus$pop)
sum.n.w <- sum(columbus$pop.not.white)
sum.w <- sum(columbus$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
columbus.dissimilarity <- (sum(columbus$pop * abs(columbus$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
columbus.interaction <- sum((columbus$pop.not.white / sum.n.w) * (columbus$pop.white / columbus$pop))

# Caluculate relative clustering
columbus.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
columbus.difference <- sum(abs(columbus$pct.not.white - columbus$pct.white)) / length(columbus$GEOID)

row <- data.frame(city = "columbus", dissimilarity = columbus.dissimilarity, interaction = columbus.interaction, clustering = columbus.clustering, difference = columbus.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### dayton

dayton <- read_csv("data/prepped/dayton_race.csv")
sum <- sum(dayton$pop)
sum.n.w <- sum(dayton$pop.not.white)
sum.w <- sum(dayton$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
dayton.dissimilarity <- (sum(dayton$pop * abs(dayton$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
dayton.interaction <- sum((dayton$pop.not.white / sum.n.w) * (dayton$pop.white / dayton$pop))

# Caluculate relative clustering
dayton.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
dayton.difference <- sum(abs(dayton$pct.not.white - dayton$pct.white)) / length(dayton$GEOID)

row <- data.frame(city = "dayton", dissimilarity = dayton.dissimilarity, interaction = dayton.interaction, clustering = dayton.clustering, difference = dayton.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### denver

denver <- read_csv("data/prepped/denver_race.csv")
sum <- sum(denver$pop)
sum.n.w <- sum(denver$pop.not.white)
sum.w <- sum(denver$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
denver.dissimilarity <- (sum(denver$pop * abs(denver$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
denver.interaction <- sum((denver$pop.not.white / sum.n.w) * (denver$pop.white / denver$pop))

# Caluculate relative clustering
denver.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
denver.difference <- sum(abs(denver$pct.not.white - denver$pct.white)) / length(denver$GEOID)

row <- data.frame(city = "denver", dissimilarity = denver.dissimilarity, interaction = denver.interaction, clustering = denver.clustering, difference = denver.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### kc

kc <- read_csv("data/prepped/kc_race.csv")
sum <- sum(kc$pop)
sum.n.w <- sum(kc$pop.not.white)
sum.w <- sum(kc$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
kc.dissimilarity <- (sum(kc$pop * abs(kc$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
kc.interaction <- sum((kc$pop.not.white / sum.n.w) * (kc$pop.white / kc$pop))

# Caluculate relative clustering
kc.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
kc.difference <- sum(abs(kc$pct.not.white - kc$pct.white)) / length(kc$GEOID)

row <- data.frame(city = "kc", dissimilarity = kc.dissimilarity, interaction = kc.interaction, clustering = kc.clustering, difference = kc.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### memphis

memphis <- read_csv("data/prepped/memphis_race.csv")
sum <- sum(memphis$pop)
sum.n.w <- sum(memphis$pop.not.white)
sum.w <- sum(memphis$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
memphis.dissimilarity <- (sum(memphis$pop * abs(memphis$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
memphis.interaction <- sum((memphis$pop.not.white / sum.n.w) * (memphis$pop.white / memphis$pop))

# Caluculate relative clustering
memphis.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
memphis.difference <- sum(abs(memphis$pct.not.white - memphis$pct.white)) / length(memphis$GEOID)

row <- data.frame(city = "memphis", dissimilarity = memphis.dissimilarity, interaction = memphis.interaction, clustering = memphis.clustering, difference = memphis.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### milwaukee

milwaukee <- read_csv("data/prepped/milwaukee_race.csv")
sum <- sum(milwaukee$pop)
sum.n.w <- sum(milwaukee$pop.not.white)
sum.w <- sum(milwaukee$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
milwaukee.dissimilarity <- (sum(milwaukee$pop * abs(milwaukee$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
milwaukee.interaction <- sum((milwaukee$pop.not.white / sum.n.w) * (milwaukee$pop.white / milwaukee$pop))

# Caluculate relative clustering
milwaukee.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
milwaukee.difference <- sum(abs(milwaukee$pct.not.white - milwaukee$pct.white)) / length(milwaukee$GEOID)

row <- data.frame(city = "milwaukee", dissimilarity = milwaukee.dissimilarity, interaction = milwaukee.interaction, clustering = milwaukee.clustering, difference = milwaukee.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### ok_city

ok_city <- read_csv("data/prepped/ok_city_race.csv")
sum <- sum(ok_city$pop)
sum.n.w <- sum(ok_city$pop.not.white)
sum.w <- sum(ok_city$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
ok_city.dissimilarity <- (sum(ok_city$pop * abs(ok_city$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
ok_city.interaction <- sum((ok_city$pop.not.white / sum.n.w) * (ok_city$pop.white / ok_city$pop))

# Caluculate relative clustering
ok_city.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
ok_city.difference <- sum(abs(ok_city$pct.not.white - ok_city$pct.white)) / length(ok_city$GEOID)

row <- data.frame(city = "ok_city", dissimilarity = ok_city.dissimilarity, interaction = ok_city.interaction, clustering = ok_city.clustering, difference = ok_city.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### pittsburgh

pittsburgh <- read_csv("data/prepped/pittsburgh_race.csv")
sum <- sum(pittsburgh$pop)
sum.n.w <- sum(pittsburgh$pop.not.white)
sum.w <- sum(pittsburgh$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
pittsburgh.dissimilarity <- (sum(pittsburgh$pop * abs(pittsburgh$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
pittsburgh.interaction <- sum((pittsburgh$pop.not.white / sum.n.w) * (pittsburgh$pop.white / pittsburgh$pop))

# Caluculate relative clustering
pittsburgh.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
pittsburgh.difference <- sum(abs(pittsburgh$pct.not.white - pittsburgh$pct.white)) / length(pittsburgh$GEOID)

row <- data.frame(city = "pittsburgh", dissimilarity = pittsburgh.dissimilarity, interaction = pittsburgh.interaction, clustering = pittsburgh.clustering, difference = pittsburgh.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### st_louis

st_louis <- read_csv("data/prepped/st_louis_race.csv")
sum <- sum(st_louis$pop)
sum.n.w <- sum(st_louis$pop.not.white)
sum.w <- sum(st_louis$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
st_louis.dissimilarity <- (sum(st_louis$pop * abs(st_louis$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
st_louis.interaction <- sum((st_louis$pop.not.white / sum.n.w) * (st_louis$pop.white / st_louis$pop))

# Caluculate relative clustering
st_louis.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
st_louis.difference <- sum(abs(st_louis$pct.not.white - st_louis$pct.white)) / length(st_louis$GEOID)

row <- data.frame(city = "st_louis", dissimilarity = st_louis.dissimilarity, interaction = st_louis.interaction, clustering = st_louis.clustering, difference = st_louis.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### syracuse

syracuse <- read_csv("data/prepped/syracuse_race.csv")
sum <- sum(syracuse$pop)
sum.n.w <- sum(syracuse$pop.not.white)
sum.w <- sum(syracuse$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
syracuse.dissimilarity <- (sum(syracuse$pop * abs(syracuse$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
syracuse.interaction <- sum((syracuse$pop.not.white / sum.n.w) * (syracuse$pop.white / syracuse$pop))

# Caluculate relative clustering
syracuse.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
syracuse.difference <- sum(abs(syracuse$pct.not.white - syracuse$pct.white)) / length(syracuse$GEOID)

row <- data.frame(city = "syracuse", dissimilarity = syracuse.dissimilarity, interaction = syracuse.interaction, clustering = syracuse.clustering, difference = syracuse.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)

### wichita

wichita <- read_csv("data/prepped/wichita_race.csv")
sum <- sum(wichita$pop)
sum.n.w <- sum(wichita$pop.not.white)
sum.w <- sum(wichita$pop.white)
avg.pct.not.white <- sum.n.w/sum

# Calculate a new column of dissimiliarity
wichita.dissimilarity <- (sum(wichita$pop * abs(wichita$pct.not.white - avg.pct.not.white))/(2 * sum * avg.pct.not.white * (1 - avg.pct.not.white)))

# Calculate a new column of interaction
wichita.interaction <- sum((wichita$pop.not.white / sum.n.w) * (wichita$pop.white / wichita$pop))

# Caluculate relative clustering
wichita.clustering <- (((sum.n.w / sum) / (sum.w / sum)) - 1)

# Caluculate new metric: average difference between white and non white percentages: 
wichita.difference <- sum(abs(wichita$pct.not.white - wichita$pct.white)) / length(wichita$GEOID)

row <- data.frame(city = "wichita", dissimilarity = wichita.dissimilarity, interaction = wichita.interaction, clustering = wichita.clustering, difference = wichita.difference, stringsAsFactors=FALSE)
results <- rbind(results,row)


