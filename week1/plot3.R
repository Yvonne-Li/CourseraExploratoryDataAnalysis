png(filename = '~/Desktop/plot3.png', width = 480, height = 480, units='px')
w2$datehour = as.POSIXct(paste(w2$Date ,w2$Time),
                         format = "%Y-%m-%d %H:%M:%S")
w3 = w2[c(11,7,8,9)]
plot(w3$datehour,w3$Sub_metering_1,
     ylab = "Energy Sub Metering", type = "l",xlab = "",ylim = c(0,35))
lines(w3$datehour,w3$Sub_metering_2,col = "red")
lines(w3$datehour,w3$Sub_metering_3,col = "blue")
legend("topright", lty = 1, cex = 0.75, colnames(w3[,2:4]), col = c("black","red","blue"))
dev.off()