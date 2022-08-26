# map-tile-downloader

docker image that you can download map tiles with png and mbtiles format

## Usage

1) get project from repo

       git clone https://github.com/mohammadpooshesh/map-tile-downloader.git

2) build image

       docker build -t map-tile-downloader .
    

3) run your image

       docker run -v your_output_folder:/app/tiles -e ZOOM=zoom -e MINLON=min_lon -e MINLAT=max_lat -e MAXLON=max_lon -e MAXLAT=max_lat  -e MAPURL=map_url map-tile-downloader
       
  ### example
  
       docker run -v $(pwd)/test:/app/tiles -e ZOOM=0-5 -e MINLON=43.475328 -e MINLAT=24.96082 -e MAXLON=63.413246 -e MAXLAT=39.966175  -e MAPURL='https://mt1.google.com/vt/lyrs=s&x={x}&y={y}&z={z}' map-tile-downloader
