affectedFig= read.csv("affected figures.csv", na = "NA")



#get aggregate total affected fig for each zone
totdeathbyzone <- aggregate(Tot_Deaths ~ ZONE, affectedFig, sum)
totdeathbyzone <- totdeathbyzone[(totdeathbyzone$Tot_Deaths  !=0),]
#tothousehold <- aggregate(Total.Household ~ ZONE, affectedFig, sum)

tothousehold <- as.numeric(affectedFig$Total.Household)

#totpopn <- aggregate(Total.Population ~ ZONE, affectedFig, sum)


#get aggregate total affected fig for each zone
#totinjured <- aggregate(Total_Injured ~ ZONE, affectedFig, sum)

#open graphic device for plotting 
#png("plot3.png")#, width=480, height=480)


plot3 <- plot(affectedFig$ZONE, tothousehold/100000,  ylab="Total households in lakh", xlab = "Zone", main = "Total households zonewise for 2015 EQ") 

#add legends to graph
legend("topright", c("household", "Population", "Injured"), col=c("black", "red", "blue"), lty=1, lwd=1, bty="n")
#dev.off() #close the graphical device

