# Loading dataset ---------------------------------------------------------
source("./readData.R")
data <- read_household_power_data()

# Plotting ---------------------------------------------------------------
png("plot3.png", width = 480, height = 480)

plot(data$Datetime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(data$Datetime, data$Sub_metering_2, type = "l", col = "red")
points(data$Datetime, data$Sub_metering_3, type = "l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = c(1, 1, 1))

dev.off()