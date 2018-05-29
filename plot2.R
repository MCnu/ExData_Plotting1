
UCepc<- read.table("~/Desktop/test_space/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


projset<- subset(UCepc, Date == "1/2/2007" | Date == "2/2/2007")
GAP <- as.numeric(projset$Global_active_power)
daytime <- strptime(paste(projset$Date, projset$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", height = 480, width = 480)
plot(daytime, GAP, type = "l", main = "", ylab="Global Active Power (kilowatts)", xlab = "")
dev.off()

