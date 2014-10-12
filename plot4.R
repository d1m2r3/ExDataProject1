#  Exploratory Data Analysis
#  Project 1
#  Source code for Plot 2

#Name of the file with data filtered to the specified date range

pf <- "./Proj1Out.txt"



dfProj1 <- read.table(pf, header = TRUE)

#Sanity check
#colnames(df)
#dim(df)

#attach(df)

#?png


#?hist
#Check on screen here

# par( mfrow = c(2,2))
# 
# #TOP, LEFT:  global active power over time
# 
# plot(dfProj1$Global_active_power,
#      type ="l",
#      xaxt ="n",
#      ylab ="Global active power")
# 
# axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat") )
# 
# 
# #TOP, RIGHT: voltage versus datetime
# 
# plot(dfProj1$Voltage,
#      type ="l",
#      xaxt ="n",
#      ylab ="Voltage")
# 
# axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat"))
# 
# #BOTTOM, lEFT: energy sub-meters over time
# 
# plot(dfProj1$Sub_metering_1,
#      type ="l",
#      xaxt ="n",
#      ylab ="Energy sub metering")
# lines(dfProj1$Sub_metering_2,
#       type ="l",
#       col = "red")
# 
# lines(dfProj1$Sub_metering_3,
#       type ="l",
#       col = "blue")
# 
# legend('topright', 
#        names(df3)[7:9],  #Last 3 column names in the data frame
#        lty = 1,    #Appropriate line type
#        lwd= 2,  # Width of legend line
#        col=c("black", "red", "blue") #  legend lines  color
# )
# 
# 
# axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat") )
# 
# #BOTTOM, RIGHT: global reactive power versus time
# 
# plot(dfProj1$Global_reactive_power,
#      type ="l",
#      xaxt ="n",
#      xlab = "datetime",
#      ylab ="Global_reactive_power")
# 
# axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat"))

#Write to file here

plot4 <- "./plot4.png"


png(plot4, width = 480, height = 480, units = "px")



#execute plotting  command here

par( mfrow = c(2,2))

#TOP, LEFT:  global active power over time

plot(dfProj1$Global_active_power,
     type ="l",
     xaxt ="n",
     ylab ="Global active power")

axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat") )


#TOP, RIGHT: voltage versus datetime

plot(dfProj1$Voltage,
     type ="l",
     xaxt ="n",
     ylab ="Voltage")

axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat"))

#BOTTOM, lEFT: energy sub-meters over time

plot(dfProj1$Sub_metering_1,
     type ="l",
     xaxt ="n",
     ylab ="Energy sub metering")
lines(dfProj1$Sub_metering_2,
      type ="l",
      col = "red")

lines(dfProj1$Sub_metering_3,
      type ="l",
      col = "blue")

legend('topright', 
       names(df3)[7:9],  #Last 3 column names in the data frame
       lty = 1,    #Appropriate line type
       lwd= 2,  # Width of legend line
       col=c("black", "red", "blue") #  legend lines  color
)
axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat") )

#BOTTOM, RIGHT: global reactive power versus time

plot(dfProj1$Global_reactive_power,
     type ="l",
     xaxt ="n",
     xlab = "datetime",
     ylab ="Global_reactive_power")

axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat"))




dev.off()

rm(dfProj1)

