Plot4 <- function (datetime, y1, y2, y3, y4) {
    
    par(mfrow = c(2,2))
    
    plot(x, y1, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
    
    plot(x, y2, type = "l", ylab = "Voltage", xlab = "datetime")
    
    plot(x,y3$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
    lines(x, y3$Sub_metering_2, col = "red")
    lines(x, y3$Sub_metering_3, col = "blue")
    legend("topright", legend = names(t), col = c("black", "red", "blue"), lty = 1, bty = "n")
    
    plot(x, y4, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
    
    # copy device to png
    dev.copy(png,'Plot4.png', width = 480, height = 480)
    dev.off()
}