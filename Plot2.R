Plot2 <- function (date, time, y) {
    # combine the date and time columns
    x <- ymd_hms(paste(date, time))
    # create the plot
    plot(x, y, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
    # copy device to png
    dev.copy(png,'Plot2.png', width = 480, height = 480)
    dev.off()
}