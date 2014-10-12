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
# plot(dfProj1$Global_active_power,
#      type ="l",
#      xaxt ="n",
#      ylab ="Global active power (kilowatts)")
# 
# axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat") )



#Write to file here

plot2 <- "./plot2.png"


png(plot2, width = 480, height = 480, units = "px")

#execute plotting  command here

plot(dfProj1$Global_active_power,
     type ="l",
     xaxt ="n",
     ylab ="Global active power (kilowatts)")

axis(1,  at = c(1, length(dfProj1$Time)/2,  length(dfProj1$Time)),  labels = c("Thu", "Fri", "Sat") )


dev.off()

 rm(dfProj1)

