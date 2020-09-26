source('plot2.R')
source('plot3.R')

voltage_plot <- function () {
  with(hpc, plot(datetime, Voltage, type='l'))
}

reactive_power_pplot <- function () {
  with(hpc, plot(datetime, Global_reactive_power, type='l'))
}

plot4 <- function () {
  par(mfcol=c(2,2))
  plot2()
  plot3()
  voltage_plot()
  reactive_power_pplot()
}


png(filename='plot4.png',width=480, height=480)
plot4()
dev.off()
