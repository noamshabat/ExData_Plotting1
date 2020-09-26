source('get_data.R')

plot2 <- function() {
  plot(hpc$datetime, hpc$Global_active_power, type='l', ylab='Global Active Power', xlab='')  
}

png(filename='plot2.png',width=480, height=480)
plot2()
dev.off()