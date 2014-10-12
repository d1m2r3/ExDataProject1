#  Exploratory Data Analysis
#  Project 1
#  Source code for Plot 1

#Name of the file with data filtered to the specified date range

pf <- "./Proj1Out.txt"



dfProj1 <- read.table(pf, header = TRUE)

#Sanity check
#colnames(df3)
#dim(df3)

#attach(dfProj1)

#?png


#?hist
#Check on screen here
# hist(dfProj1$Global_active_power, 
#      col = "red",
#      main = "Global Active Power",
#      xlab = "Global Active Power (kilowatts)",
#      ylim = c(0,1200)
# )


#Write to file here

plot1 <- "./plot1.png"


png(plot1, width = 480, height = 480, units = "px")

#execute hist command here

hist(dfProj1$Global_active_power, 
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylim = c(0,1200)
)

dev.off()

#detach(dfProj1)

rm(dfProj1)

