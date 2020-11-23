# Reading and loading the data

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)

# Creating a Time series

datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (KW)")

# Saving the file as PNG and closing the Device

dev.copy(png,"plot2.png", width=480, height=480)
dev.off()