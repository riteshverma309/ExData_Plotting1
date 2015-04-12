ds <- read.csv("household_power_consumption.txt" , sep = ';',na.strings = "?")
dsSubSet <- ds[ds$Date %in% c("1/2/2007","2/2/2007") ,]
dt_tm <- strptime(paste(dsSubSet$Date, dsSubSet$Time), format="%d/%m/%Y %H:%M:%S")
png(filename="plot3.png")
plot(x=dt_tm, y=dsSubSet[,"Sub_metering_1"], type="l",ylab="Energy sub metering", main="", xlab="")
lines(x=dt_tm, y=dsSubSet[,"Sub_metering_2"], col="red")
lines(x=dt_tm, y=dsSubSet[,"Sub_metering_3"], col="blue")
legend("topright", lty=1,  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col = c("black", "blue", "red"))
dev.off()