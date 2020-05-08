#Plot 1
data <- read.table("assignment1.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

x <- as.numeric(data2$Global_active_power)
png("plot1.png", width=480, height=480)
hist(x, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
