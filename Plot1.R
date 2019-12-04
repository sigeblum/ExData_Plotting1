Plot1 <- function (x) {
    hist(x, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
    dev.copy(png,'Plot1.png', width = 480, height = 480)
    dev.off()
}