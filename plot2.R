source("load.R")

png("plot2.png")

with(consumption, plot(Time, Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l"
                       , xlab =""))
dev.off()