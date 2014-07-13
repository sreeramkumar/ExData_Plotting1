power <- read.table("household_power_consumption.txt", nrows = 1, sep = ";", header = TRUE, na.strings = "?") 
cols <- colnames(power)

power <- read.table("household_power_consumption.txt", nrows = 2880, sep = ";", header = FALSE, col.names = cols, na.strings = "?", skip = 66637) 
png(filename = "./figure/plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))
plot(strptime(paste(power[,1], power[, 2]), format = "%d/%m/%Y %H:%M:%S"), power[,7], type = "n", xlab = "", ylab = "Energy sub metering")
lines(strptime(paste(power[,1], power[, 2]), format = "%d/%m/%Y %H:%M:%S"), power[,7], type = "l", col = "black")
lines(strptime(paste(power[,1], power[, 2]), format = "%d/%m/%Y %H:%M:%S"), power[,8], type = "l", col = "red")
lines(strptime(paste(power[,1], power[, 2]), format = "%d/%m/%Y %H:%M:%S"), power[,9], type = "l", col = "blue")
legend("topright", lty = c(1, 1, 1), lwd = c(2.5, 2.5, 2.5), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()