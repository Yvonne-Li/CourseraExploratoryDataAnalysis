par(mfrow = c(1,1))
w2 = subset(w1, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))
w2$Global_active_power = as.numeric(as.character(w2$Global_active_power))
png(filename = '~/Desktop/plot1.png', width = 480, height = 480, units='px')
hist(w2$Global_active_power,col = "red", 
    main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
#axis(side=1, at=c(0,2,4,6))

