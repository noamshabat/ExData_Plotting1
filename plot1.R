source(file='get_data.R')

plot1 <- function() {
  hist(hpc$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power')  
}

png(filename='plot1.png',width=480, height=480)
plot1()
dev.off()