## Reading data
test1 <- read.table('household_power_consumption.txt',header=TRUE,sep=';')
test2 <- split(test1,test1$Date)
test3 <- rbind(test2$'1/2/2007',test2$'2/2/2007')
## first plot
t4 <- test3$Date
t5 <- test3$Time
t6 <- paste(t4,t5)
t7 <- strptime(t6,'%d/%m/%Y %H:%M:%S')
t8 <- test3$Global_active_power
t9 <- as.numeric(as.character(t8))
png('plot4.png',width=480,height=480)
par(mfrow=c(2,2))
plot(t7,t9,xlab='',ylab='Global Active Power',type='l')
## second plot
volt <- as.numeric(as.character(test3$Voltage))
plot(t7,volt,xlab='datetime',ylab='Voltage',type='l')
## third plot
test6 <- as.numeric(as.character(test3$Sub_metering_1))
test7 <- as.numeric(as.character(test3$Sub_metering_2))
test8 <- as.numeric(as.character(test3$Sub_metering_3))
plot(t7,test6,type='l',xlab='',ylab='Energy sub metering',col='black')
lines(t7,test7,col='Red')
lines(t7,test8,col='Blue')
legend("topright",col=c('black','red','blue'),bty='n',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=c('solid','solid','solid'))
## fourth plot
react <- as.numeric(as.character(test3$Global_reactive_power))
plot(t7,react,xlab='datetime',ylab='Global_reactive_power',type='l')
dev.off()
