#!/bin/bash

cd /app/tiles
date=$(date +"%Y_%m_%d_%I_%M_%p")

# download mbtiles file from map url
download-tiles map-$date.mbtiles --zoom-levels=$ZOOM --bbox=$MINLON,$MINLAT,$MAXLON,$MAXLAT --tiles-url=$MAPURL

# convert mbtiles format to png format
/app/mbutil/mb-util map-$date.mbtiles tiles-$date

