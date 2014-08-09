test1 <- read.table('household_power_consumption.txt',header=TRUE,sep=';')
test2 <- split(test1,test1$Date)
test3 <- rbind(test2$'2/1/2007',test2$'2/2/2007')
test4 <- test3$Global_active_power
test5 <- as.character(test4)
test6 <- as.numeric(test5)
png('plot1.png',width=480,height=480)
hist(test6,col=10,xlab='Global Active Power(killowatts)',main='Global Active Power')
dev.off()

