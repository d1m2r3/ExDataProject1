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
# plot(dfProj1$Sub_metering_1,
#      type ="l",
#      xaxt ="n",
#      ylab ="Energy sub metering")
# 
# #?lines
# 
# 
# lines(dfProj1$Sub_metering_2,
#       type ="l",
#       col = "red")
# 
# lines(dfProj1$Sub_metering_3,
#       type ="l",
#       col = "blue")

# legend('topright', 
#        names(df3)[7:9],  #Last 3 column names in the data frame
#        lty = 1,    #Appropriate line type
#        lwd= 2,  # Width of legend line
#        col=c("black", "red", "blue") #  legend lines  color
# )

# axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat") )


#Write to file here

plot3 <- "./plot3.png"


png(plot3, width = 480, height = 480, units = "px")

#execute plotting  command here
plot(dfProj1$Sub_metering_1,
     type ="l",
     xaxt ="n",
     ylab ="Energy sub metering")

#?lines


lines(dfProj1$Sub_metering_2,
      type ="l",
      col = "red")

lines(dfProj1$Sub_metering_3,
      type ="l",
      col = "blue")
axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat") )

legend('topright', 
       names(df3)[7:9],  #Last 3 column names in the data frame
       lty = 1,    #Appropriate line type
       lwd= 2,  # Width of legend line
       col=c("black", "red", "blue") #  legend lines  color
)


dev.off()

 rm(dfProj1)

