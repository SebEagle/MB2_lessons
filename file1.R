


# create some plots

x <- c("A", 1:10)
#plot(seq(50,100,by=5),axis(side=x,labels=x))


prep <- c(56,46,50,53,69,83,80,62,55,60,63)
plot(prep, pch=19, cex=2, col="#00ff0060", xlab = x)
# 


library(raster)
library(ggplot2)
library(devtools)

germany2 <- getData("GADM", country="DEU", level=2)
plot(germany2)
prec<- getData("worldclim",var="prec", res=0.5,lon=10,lat=51)
plot(prec,germany2)
plot(prec)
prec_ger1<-crop(prec, germany2)
spplot(prec_ger1)
prec_ger2<-mask(prec_ger1, germany2)
plot(prec_ger2)
bavaria <- getData("GADM", country="BY", level=1)
plot(bavaria)
list(germany)
bavaria <- germany[2,1:13]
plot(bavaria)
prec_by1<-crop(prec, bavaria)
spplot(prec_by1)
prec_by2<-mask(prec_by1, bavaria)
spplot(prec_by2)

germany[100:101,1:15]
germany[136,1:15]
germany[140,1:15]


wu1<-germany[102,1:15]
wu2<-germany[129,1:15]
wu3<-germany[137,1:15]
wu4<-germany[136,1:15]
wue<-germany[136:137,1:15]
plot(wue)
prec_wue1<-crop(prec, wue)
spplot(prec_wue1)
prec_wue2<-mask(prec_wue1, wue)
spplot(prec_wue2)

muc <- germany[100:103,1:15]
plot(muc)
prec_muc1<-crop(prec, muc)
spplot(prec_muc1)
prec_muc2<-mask(prec_muc1, muc)
spplot(prec_muc2)

install.packages("ggplot2")
ggplot(mpg, aes(x =year)) + geom_histogram(bins=20)
germany3 <- getData("GADM", country="DEU", level=3)
x11()
x <- data.frame(x=1,y=1,label="ggplot2 introduction \n@ EAGLE")
head(mpg)
ggplot(mpg,aes(x=displ,y=hwy)) + geom_point()
ggplot(mpg, aes(displ,cty,colour=class)) + geom_point()
ggplot(mpg,aes(x=displ,y=hwy)) + geom_point() +facet_wrap("class")
ggplot(mpg, aes(cty,hwy)) + geom_boxplot(alpha=.5) + geom_point(aes(color=class), alpha=.7, size=1.5, position = position_jitter(width=.25, height=0))
x11()




rm(bavaria)
