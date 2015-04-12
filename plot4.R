ds <- read.csv("household_power_consumption.txt" , sep = ';',na.strings = "?")
dsSubSet <- ds[ds$Date %in% c("1/2/2007","2/2/2007") ,]
dt_tm <- strptime(paste(dsSubSet$Date, dsSubSet$Time), format="%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(dt_tm, dsSubSet$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(dt_tm, dsSubSet$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(dt_tm, dsSubSet$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(dt_tm, dsSubSet$Sub_metering_2, type="l", col="red")
lines(dt_tm, dsSubSet$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(dt_tm, dsSubSet$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()