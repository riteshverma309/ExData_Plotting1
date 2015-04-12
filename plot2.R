ds <- read.csv("household_power_consumption.txt" , sep = ';',na.strings = "?")
dsSubSet <- ds[ds$Date %in% c("1/2/2007","2/2/2007") ,]
dt_tm <- strptime(paste(dsSubSet$Date, dsSubSet$Time), format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(x=dt_tm, y=dsSubSet[,"Global_active_power"], type="l",ylab="Global Active Power (kilowatts)", main="", xlab="")
dev.off()