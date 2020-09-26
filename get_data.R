getData <- function() {
  url='https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
  tfile='data.zip'
  
  # check if file already downloaded
  if (!file.exists(tfile)) {
    print('downloading data file')
    download.file(url, tfile)  
  }
  
  # check if file unzipped
  unzipped = 'household_power_consumption.txt'
  if (!file.exists(unzipped)) {
    print(paste('unzipping',tfile))
    unzip(tfile) 
  }
  
  # read file
  res = read.table(unzipped,sep=";",header = TRUE)
  # return just relevant dates
  res = res[res$Date=="1/2/2007" | res$Date=="2/2/2007",]

  # add column with posixlt version of datetime.
  res$datetime <- strptime(paste(res$Date,res$Time),format="%d/%m/%Y %H:%M:%S")
  res$Global_active_power <- as.numeric(res$Global_active_power)
  res
}

if (!exists("hpc")) {
  print("Loading data to variable 'hpc'")
  hpc = getData()
}
