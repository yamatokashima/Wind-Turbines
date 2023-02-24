-- geocodes table creation --

CREATE TABLE geocodes (
	summary_level NUMERIC,
	state_code NUMERIC,
	county_code NUMERIC,
	county_subdivision NUMERIC,
	place_code NUMERIC,
	consolidated_city_code NUMERIC,
	county TEXT,
	state_county_fips NUMERIC,
	population NUMERIC
)