power <- read.table("household_power_consumption.txt", nrows = 1, sep = ";", header = TRUE, na.strings = "?") 
cols <- colnames(power)

power <- read.table("household_power_consumption.txt", nrows = 2880, sep = ";", header = FALSE, col.names = cols, na.strings = "?", skip = 66637) 
png(filename = "./figure/plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))
plot(strptime(paste(power[,1], power[, 2]), format = "%d/%m/%Y %H:%M:%S"), power[,3], type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(strptime(paste(power[,1], power[, 2]), format = "%d/%m/%Y %H:%M:%S"), power[,3], type = "l")
dev.off()