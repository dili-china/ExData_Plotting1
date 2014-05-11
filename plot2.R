data <- read.csv ("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings ="?")
data2 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")


png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")

with(data2, plot.ts(Global_active_power, xlab="", ylab = "Global Active Power (kilowatts)", xaxt = 'n'))
axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))


dev.off()