# Reading and loading the data

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)

# Subsetting the data from 1/2/2007 and 2/2/2007

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

globalActivePower <- as.numeric(subsetdata$Global_active_power)
globalReactivePower <- as.numeric(subsetdata$Global_reactive_power)
voltage <- as.numeric(subsetdata$Voltage)
subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
subMetering3 <- as.numeric(subsetdata$Sub_metering_3)

# Creating the Histogram

hist(globalActivePower, col = "red", main = "Global Active Power", xlab="Global Activer Power (KW)")

# Saving the file as PNG and closing the device

dev.copy(png,"plot1.png", width=480, height=480)
dev.off()