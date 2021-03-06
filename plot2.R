#Plot 2
data <- read.table("assignment1.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

x <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
y <- as.numeric(data2$Global_active_power)
png("plot2.png", width=480, height=480)
plot(x, y, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
