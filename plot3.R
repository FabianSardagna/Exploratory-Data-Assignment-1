#Plot 3
data <- read.table("assignment1.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

x <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subMetering1 <- as.numeric(data2$Sub_metering_1)
subMetering2 <- as.numeric(data2$Sub_metering_2)
subMetering3 <- as.numeric(data2$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(x, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(x, subMetering2, type="l", col="red")
lines(x, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
