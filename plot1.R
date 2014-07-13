power <- read.table("household_power_consumption.txt", nrows = 1, sep = ";", header = TRUE, na.strings = "?") 
cols <- colnames(power)

power <- read.table("household_power_consumption.txt", nrows = 2880, sep = ";", header = FALSE, col.names = cols, na.strings = "?", skip = 66637) 
png(filename = "./figure/plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))
hist(power[,3], col = "red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()