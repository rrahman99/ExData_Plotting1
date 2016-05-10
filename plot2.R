#File loading and data reading
dataPath <- "./data/household_power_consumption.txt"
data <- read.table(dataPath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataSubSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plotting
datetime <- strptime(paste(dataSubSet$Date, dataSubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dataSubSet$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()