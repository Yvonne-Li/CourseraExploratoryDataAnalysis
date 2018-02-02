
png(filename = '~/Desktop/plot2.png', width = 480, height = 480, units='px')
w2$datehour = as.POSIXct(paste(w2$Date ,w2$Time),
                             format = "%Y-%m-%d %H:%M:%S")
plot(y = w2$Global_active_power, x = w2$datehour, type = "l", 

     ylab = "Global Active Power (kilowatts)", xlab = ""
     )
dev.off()