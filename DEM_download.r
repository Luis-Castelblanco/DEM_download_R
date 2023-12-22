library(elevatr)
library(sf)
#limite del parque
sh = st_read("C:/Users/luisf/OneDrive - UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO/Maestria/2023-2/CONAFOR/GDB/CARTOGRAFIA_BASE/base_vectoriales/limites_continentales_mexico_2020_WGS84.shp")
#descarga un mde de internet
elev <- get_elev_raster(sh, prj = projection(sh), z = 14, clip = "locations")
#visualiza
plot(elev)
