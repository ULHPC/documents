# 

#install.packages("plotrix")
library(plotrix)

interconnect_family = read.csv("interconnect_family.csv",  sep = ";")
slices <- interconnect_family[,3]
lbls   <- paste(slices, " %")
lgd    <- interconnect_family[1]


#pdf("interconnect_family.pdf")
pie3D(slices,labels=lbls,explode=0.1,radius=1,main="Interconnect Family System Share\n(Top500, Nov. 2015)")


#lgd <- interconnect_family[,1]
#legend("topleft", legend=lgd, cex=0.8, fill=colors)

#dev.off()
