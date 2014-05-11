data <- read.csv ("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings ="?")
data2 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

png(filename = "plot4.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")

par(mfrow = c(2,2))

with(data2, plot.ts(Global_active_power, xlab="", ylab = "Global Active Power", xaxt = 'n'))
axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))

with(data2, plot.ts(Voltage, xlab="datetime", xaxt = 'n'))
axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))

with(data2, plot.ts(Sub_metering_1, xlab="", ylab = "Energy sub metering", xaxt = 'n'))
lines(data2$Sub_metering_2, xlab="", xaxt = 'n', col = "red")
lines(data2$Sub_metering_3, xlab="", xaxt = 'n', col = "blue")
axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"), bty = "n" )

with(data2, plot.ts(Global_reactive_power, xlab = "datetime", xaxt = 'n'))
axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))

dev.off()