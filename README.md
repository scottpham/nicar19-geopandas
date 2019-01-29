## Intro
GeoPandas is an extremely useful and mostly user-friendly tool for doing basic GIS analysis and plotting in Python. I use it more frequently than QGIS or other tools because it integrates nicely with Jupyter Notebooks and uses Pandas under the hood, both of which are regular parts of my daily data journalism toolkit.

It's important to realize that GeoPandas is really just a nice wrapper around a bunch of other useful Python libraries including Pandas, Matplotlib, Fiona, Shapely and others. If you want to do something complicated that's not covered by the GeoPandas documentation, there's a good chance you can still do it by looking at the documentation for one of those other libraries.

## Getting started

This project uses a [Pipenv](https://pipenv.readthedocs.io/en/latest/install/) to manage all the Python libraries you'll need and [Makefiles](https://bost.ocks.org/mike/make/) to get all the big data files downloaded from the Census and such.

If you've already got Pipenv installed on your machine, just run all these commands in your terminal one after the other in order.

1. `pipenv install`
2. `pipenv shell`
3. `make all`

This last one will take 3-5 minutes. Your terminal might throw a few warnings but as long as it completes, you're fine. Finally, run:

1.  `jupyter notebook`

And you'll be good to go! All the good stuff is the `notebooks` folder. Descriptions of those files below:

## Notebooks

The instruction files are:

- `1_basic_mapping.ipynb`
- `2_advanced_mapping.ipynb`

Go through these in order. The notebooks use a few datasets that I've cleaned and simplified. The Makefile takes care of that when you set up, but if you're curious, you can see exactly how I've cleaned them in the following notebooks:

- `data_cleaning_counties.ipynb`
- `data_cleaning_restaurants.ipynb`
- `data_cleaning_states.ipynb`

## In-in-out dataset:

In `data_cleaning_restaurants.ipynb` I scrape a website and geocode the addresses using the Google API. Again: you do not have to run this code. The complete scraped and cleaned file is included for you in `output/innout/`.

If you want to run this code, you'll need to set up your own API Key following the instructions [here](https://developers.google.com/maps/documentation/geocoding/get-api-key). 

Put your API key in `credentials_template.py` and then change the name to `credentials_template.py`.

## Helpful links

[Geopandas reference](http://geopandas.org/install.html)

[Jonathan Soma's excellent geopandas tutorials](http://jonathansoma.com/lede/foundations-2017/classes/geopandas/mapping-with-geopandas/)

[Spatial Reference for getting EPSG numbers](http://spatialreference.org/ref/epsg/3310/)

[Pyplot options](https://matplotlib.org/3.0.2/api/_as_gen/matplotlib.pyplot.plot.html#matplotlib.pyplot.plot)

[Spatial join example](https://github.com/datadesk/geopandas-spatial-join-example)

[Matplotlib colormaps](https://matplotlib.org/users/colormaps.html)

[Matplotlib named colors](https://i.stack.imgur.com/lFZum.png)

[Census shapefiles](https://www.census.gov/geo/maps-data/data/tiger-line.html)

[In-n-out locations](http://www.in-n-out.com/locations)

[CDC opioid prescription data](https://www.cdc.gov/drugoverdose/maps/rxcounty2017.html)


