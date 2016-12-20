source("load.R")

png("plot3.png")

with(consumption, plot(Time, Sub_metering_1, ylab = "Energy sub metering", type = "l"
                       , xlab =""))
with(consumption, lines(Time, Sub_metering_2, col = "red"))
with(consumption, lines(Time, Sub_metering_3, col = "blue"))

legend("topright", legend = c("Sub_metering_1" ,"Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

dev.off()