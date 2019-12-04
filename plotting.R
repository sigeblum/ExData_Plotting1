temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
data <- read.table(unz(temp, "household_power_consumption.txt"), sep = ";", stringsAsFactors = FALSE, na.strings = "?", dec = ".", header = TRUE)

library(lubridate)
library(dplyr)

data$Date <- dmy(data$Date)
#data$Time <- format(strptime(data$Time, format = "%H:%M:%S"), format = "%H:%M:%S")

subdata <- data %>% filter(Date == "2007-02-01" | Date == "2007-02-02")
