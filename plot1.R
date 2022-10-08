# Loading dataset ---------------------------------------------------------
source("./readData.R")
data <- read_household_power_data()

# Plotting ---------------------------------------------------------------
png("plot1.png", width = 480, height = 480)

hist(data$Global_active_power, col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)",
     ylab = "Frequency")

dev.off()