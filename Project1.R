library(lubridate)
library(dplyr)
library(stringr)
# create temp file
temp <- tempfile()
#download zip file
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
# unzip file and read table
data <- read.table(unz(temp, "household_power_consumption.txt"), sep = ";", stringsAsFactors = FALSE, na.strings = "?", dec = ".", header = TRUE)
# convert date column to datae format
data$Date <- dmy(data$Date)
# select the required date range
datasub <- data %>% filter(Date >= "2007-02-01" & Date <= "2007-02-02")

source("Plot1.R")
Plot1(datasub$Global_active_power)

source("Plot2.R")
Plot2(datasub$Date, datasub$Time, datasub$Global_active_power)

source("Plot3.R")
Plot3(datasub$Date, datasub$Time, dplyr::select(datasub, starts_with("Sub")))

source("Plot4.R")
Plot4(ymd_hms(paste(datasub$Date, datasub$Time)), datasub$Global_active_power, datasub$Voltage, dplyr::select(datasub, starts_with("Sub")), datasub$Global_reactive_power)

