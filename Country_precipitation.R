
# download adminstrative borders of a country and the precipitation data grid

library(raster)  # get the raster toolbox

# download administrative borders from GADM server and plot it
country <- getData("GADM", country="ITA", level=2)
plot(country)

# download precipitation data from worldclim server and plot it
prec<- getData("worldclim",var="prec", res=0.5,lon=10,lat=45)
plot(prec)

# limit extent of shown data to a grid confined by the shapefiles extent
prec_coun1<-crop(prec, country)
spplot(prec_coun1)

# mask out all pixels, which lie outside the shapefile
prec_coun2<-mask(prec_coun1, country) #, inverse=TRUE) #(keyword 'inverse' masks out all data within the shapefiles extent)
plot(prec_coun2)

# calculate average precipitation of country for each month
prec_avg <- cellStats(prec_coun2,stat=mean)
plot(prec_avg)
