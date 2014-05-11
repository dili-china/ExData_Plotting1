data <- read.csv ("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings ="?")
data2 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")

hist(data2$Global_active_power, 
     col = "red", 
     ylim = c(0,1200),
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")


dev.off()