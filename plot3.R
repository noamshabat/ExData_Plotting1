source('get_data.R')

plot3 <- function() {
  plot(hpc$datetime, hpc$Sub_metering_1, type='n', ylab='Energy sub metering', xlab='')
  legend("topright",col=c("black","red","blue"), legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lty=c(1,1,1))
  
  lines(hpc$datetime, hpc$Sub_metering_1,col="black")
  lines(hpc$datetime, hpc$Sub_metering_2,col="red")
  lines(hpc$datetime, hpc$Sub_metering_3,col="blue")
  
}

png(filename='plot3.png',width=480, height=480)
plot3()
dev.off()