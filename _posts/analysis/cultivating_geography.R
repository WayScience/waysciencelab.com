# Plotting all the author locations from the manuscript:
# "A field guide to cultivating computational biology"
# https://doi.org/10.1371/journal.pbio.3001419

# Author: Gregory P. Way
# License: CC0

# Sources:
# https://r-spatial.org/r/2018/10/25/ggplot2-sf.html
# https://stackoverflow.com/questions/43207947/whole-earth-polygon-for-world-map-in-ggplot2-and-sf
# https://ggplot2-book.org/maps.html

.libPaths("/Users/waygr/miniforge3/lib/R/library")
library(sf)
library(ggplot2)
library(tidyverse)
library(rnaturalearth)
library(rnaturalearthdata)

world <- ne_countries(scale = "medium", returnclass = "sf")

events <- tribble(
  ~Organization, ~latitude, ~longitude, ~Category,
  "Broad Institute of MIT and Harvard", 42.357490, -71.092810, "Institute",
  "University of Colorado Anschutz", 40.003730, -105.249230, "Academia",
  "RIKEN Center for Integrative Medical Sciences", 38.71292926199627, 139.59562374394673, "Institute",
  "Human Technopole", 45.51999954186684, 9.107439032392147, "Institute",
  "University of Campinas", -22.8183305039612, -47.064688415466385, "Academia",
  "University of Southern California", 34.02244969539796, -118.28434452556097, "Academia",
  "Pacific Northwest National Laboratory", 46.345266285135175, -119.27896158056203, "Government",
  "The University of Melbourne", -37.79821023739906, 144.96094181180413, "Academia",
  "Weill-Cornell Medicine", 40.766642968762596, -73.95512646350997, "Academia",
  "New York Genome Center", 40.72359786872529, -74.00468214816593, "Institute",
  "University of California Merced", 37.36620161164627, -120.42243935936979, "Academia",
  "Technical University of Munich", 48.149767351137385, 11.568289352032592, "Academia",
  "The University of Sydney", -33.88828977980366, 151.18771417865827, "Academia",
  "Johns Hopkins University", 39.329992566774095, -76.62038895561544, "Academia"
)

crs_code <- "+proj=laea +lat_0=52 +lon_0=10 +x_0=4321000 +y_0=3210000 +ellps=GRS80 +units=m +no_defs"
us_crs_code <- "+proj=laea +lat_0=50 +lon_0=-100 +x_0=0 +y_0=0 +ellps=GRS80 +units=m +no_defs"
aus_crs_code <- "+proj=laea +lat_0=50 +lon_0=-220 +x_0=0 +y_0=0 +ellps=GRS80 +units=m +no_defs"

events_transform <- events %>%
  sf::st_as_sf(coords = c("longitude", "latitude"), crs = 4326) %>%
  sf::st_transform(crs = crs_code)

events_transformed_with_lat_lon <- cbind(
  events_transform,
  sf::st_coordinates(events_transform)
  )

sphere <- sf::st_graticule(ndiscr = 10000, margin = 10e-6) %>%
  sf::st_transform(crs = crs_code) %>%
  sf::st_convex_hull() %>%
  summarise(geometry = sf::st_union(geometry))

cultivating_map_gg <- (
  ggplot(data = world)
  + geom_sf(data = sphere, fill = "#D8F4FF", alpha = 0.7)
  + geom_sf(fill= "antiquewhite", color = "black")
  + geom_point(
    data = events_transformed_with_lat_lon,
    aes(x = X, y = Y, color = Organization, shape = Category),
    size = 5,
    alpha = 0.8
    )
  + xlab("")
  + ylab("")
  + theme_minimal()
  + coord_sf(crs = crs_code)
)

ggplot2::ggsave("cultivating_compbio_map.png", cultivating_map_gg, bg = "white", width = 10, height = 6)

