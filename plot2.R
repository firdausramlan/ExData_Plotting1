data <- read.table("household_power_consumption.txt", sep=";", na.strings="?", skip=66638,nrow=2879)
colnames(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

#Plot Global Active Power over Date
png("plot2.png", width=480, height=480)
datetimes <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
plot(datetimes, data$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="n")
lines(datetimes, data$Global_active_power)
dev.off()