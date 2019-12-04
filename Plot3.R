Plot3 <- function (dat, tim, y) {
    # combine the date and time columns
    x <- ymd_hms(paste(dat, tim))
    # create the plot
    plot(x, y$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
    lines(x, y$Sub_metering_2, col = "red")
    lines(x, y$Sub_metering_3, col = "blue")
    legend("topright", legend = names(t), col = c("black", "red", "blue"), lty = 1)
    
    # copy device to png
    dev.copy(png,'Plot3.png', width = 480, height = 480)
    dev.off()
}