ds <- read.csv("household_power_consumption.txt" , sep = ';',na.strings = "?")
dsSubSet <- ds[ds$Date %in% c("1/2/2007","2/2/2007") ,]
dsSubSet$Date <- as.Date(dsSubSet$Date, format="%d/%m/%y")
dsSubSet$Time <- strptime(dsSubSet$Time, format="%H:%M:%S")
png("plot1.png", width=480, height=480)
hist(as.numeric(dsSubSet$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()