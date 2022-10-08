# Loading dataset ---------------------------------------------------------
source("./readData.R")
data <- read_household_power_data()

# Plotting ---------------------------------------------------------------
png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

with(data,{
    # global active power
    plot(Datetime, Global_active_power, type = "l", col = "black", xlab = '', ylab = "Global Active Power")
    # voltage
    plot(Datetime, Voltage, type = "l", col = "black", xlab = 'datetime', ylab = "Voltage")
    # energy sub metering
    plot(Datetime, Sub_metering_1, type = "l", col = "black", xlab = '', ylab = "Energy sub metering")
    lines(Datetime, Sub_metering_2, col = "red")
    lines(Datetime, Sub_metering_3, col = "blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           col = c("black", "red", "blue"),
           lty = c(1, 1, 1))
    # global reactive power
    plot(Datetime, Global_reactive_power, type = "l", col = "black", xlab = "datetime", ylab = "Global_reactive_power")
})

dev.off()