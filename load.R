consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = c('?'), stringsAsFactors =  FALSE)
consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")
consumption$Time <- strptime(paste(consumption$Date, consumption$Time), format = "%Y-%m-%d %H:%M:%S")

consumption <- subset(consumption, Date >= as.Date("2007-02-01") & Date < as.Date("2007-02-03"))