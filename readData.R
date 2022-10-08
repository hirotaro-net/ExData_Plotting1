# Loading dataset ---------------------------------------------------------
read_household_power_data <- function() {
    data <- read.table('./household_power_consumption.txt',sep = ';', header = 1, stringsAsFactors = FALSE)
    data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
    data <- data['2007-02-01'<= data$Date & data$Date <= '2007-02-02', ]
    data$Global_active_power <- as.numeric(data$Global_active_power)
    data$Datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
    return(data)
}