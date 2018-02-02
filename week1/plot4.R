png(filename = '~/Desktop/plot4.png', 
    width = 480, height = 480, units='px')
par(mfrow = c(2,2))
w2$datehour = as.POSIXct(paste(w2$Date ,w2$Time),
                         format = "%Y-%m-%d %H:%M:%S")
w3 = w2[c(11,7,8,9)]
#Global Active Power
plot(y = w2$Global_active_power, x = w2$datehour, type = "l", 
     
     ylab = "Global Active Power", xlab = ""
)

#Voltage vs datetime
plot(w2$datehour,w2$Voltage,
     ylab = "Voltage", type = "l",xlab = "datetime")
#Energy sub metering


plot(w3$datehour,w3$Sub_metering_1,
     ylab = "Energy Sub Metering", type = "l",xlab = "",ylim = c(0,35))
lines(w3$datehour,w3$Sub_metering_2,col = "red")
lines(w3$datehour,w3$Sub_metering_3,col = "blue")
legend("topright", lty = 1, cex = 0.75, 
       colnames(w3[,2:4]), col = c("black","red","blue"),
       bty = "n")

#Global reactive power vs datetime
plot(w2$datehour,w2$Global_reactive_power,
     ylab = "Global_reactive_power", type = "l",xlab = "datetime")
dev.off()