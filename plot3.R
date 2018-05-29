

UCepc<- read.table("~/Desktop/test_space/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

projset<- subset(UCepc, Date == "1/2/2007" | Date == "2/2/2007")
GAP <- as.numeric(projset$Global_active_power)
daytime <- strptime(paste(projset$Date, projset$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
sub1 <- as.numeric(projset$Sub_metering_1)
sub2 <- as.numeric(projset$Sub_metering_2)
sub3 <- as.numeric(projset$Sub_metering_3)

png("plot3.png", width = 480, height = 480)
plot(daytime, sub1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(daytime, sub2, type = "l", col = "red")
lines(daytime, sub3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()


