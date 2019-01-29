.PHONY: county state unzip simplify_counties simplify_states trash all

all: county state unzip simplify_counties simplify_states

trash: 
	rm -rf data/state && \
		rm -rf data/county && \
		rm -rf data/tl_2018_us_* \
		rm -rf output/counties_simple/ && \
		rm -rf output/states_simple/;

simplify_counties:
	mkdir -p output/counties_simple/ && \
	cd notebooks && \
	jupyter nbconvert \
		--ExecutePreprocessor.timeout=-1 \
		--to notebook \
		--output data_cleaning_counties.ipynb \
		--execute data_cleaning_counties.ipynb;

simplify_states:
	mkdir -p output/states_simple/ && \
		cd notebooks && \
		jupyter nbconvert \
		--ExecutePreprocessor.timeout=-1 \
		--ExecutePreprocessor.kernel_name=python3 \
		--to notebook \
		--output data_cleaning_states.ipynb \
		--execute data_cleaning_states.ipynb;

# Unzip census files
unzip:
	unzip data/tl_2018_us_county.zip -d data/county/ && unzip data/tl_2018_us_state.zip -d data/state/

# Download county files
county:
	cd data/ && curl -O# "https://www2.census.gov/geo/tiger/TIGER2018/COUNTY/tl_2018_us_county.zip"

# Download state files
state:
	cd data/ && curl -O# "https://www2.census.gov/geo/tiger/TIGER2018/STATE/tl_2018_us_state.zip"
