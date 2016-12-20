source("load.R")

png("plot4.png")

par(mfrow = c(2, 2))


# (1, 1)
with(consumption, plot(Time, Global_active_power, ylab = "Global Active Power", type = "l"
                       , xlab =""))

# (1, 2)
with(consumption, plot(Time, Voltage, xlab = "datetime", ylab = "Voltage", type = "l"))


# (2, 1)

with(consumption, plot(Time, Sub_metering_1, ylab = "Energy sub metering", type = "l"
                       , xlab =""))
with(consumption, lines(Time, Sub_metering_2, col = "red"))
with(consumption, lines(Time, Sub_metering_3, col = "blue"))

legend("topright", legend = c("Sub_metering_1" ,"Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")

# (2, 2)
with(consumption, plot(Time, Global_reactive_power, xlab = "datetime", type = "l"))

dev.off()