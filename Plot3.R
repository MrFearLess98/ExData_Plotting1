# Reading and loading the data

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)

# Creating a plot for sub metering

plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

 # Saving the file as PNG and closing the Device

dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()