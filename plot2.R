t1 <- read.table('household_power_consumption.txt',header=TRUE,sep=';')
t2 <- split(t1,t1$Date)
t3 <- rbind(t2$'1/2/2007',t2$'2/2/2007')
t4 <- t3$Date
t5 <- t3$Time
t6 <- paste(t4,t5)
t7 <- strptime(t6,'%d/%m/%Y %H:%M:%S')
t8 <- t3$Global_active_power
t9 <- as.numeric(as.character(t8))
png('plot2.png',width=480,height=480)
plot(t7,t9,xlab='',ylab='Global Active Power(kilowatts)',type='l')
dev.off()