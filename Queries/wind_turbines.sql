-- wind turbiune table creation --

CREATE TABLE wind_turbines_new (
case_id NUMERIC,
faa_ors TEXT,
faa_asn TEXT,
usgs_pr_id NUMERIC,
eia_id NUMERIC,
t_state TEXT,
t_county TEXT,
t_fips NUMERIC,
p_name TEXT,
p_year NUMERIC,
p_tnum NUMERIC,
p_cap DECIMAL,
t_manu TEXT,
t_model TEXT,
t_cap NUMERIC,
t_hh DECIMAL,
t_rd DECIMAL,
t_rsa DECIMAL,
t_ttlh DECIMAL,
retrofit NUMERIC,
retrofit_year NUMERIC,
t_conf_atr NUMERIC,
t_conf_loc NUMERIC,
t_img_date DATE,
t_img_srce TEXT,
xlong DECIMAL,
ylat DECIMAL,
population NUMERIC
)

-- wind turbine table manipulation --

ALTER TABLE wind_turbines RENAME COLUMN t_state TO turbine_state
ALTER TABLE wind_turbines RENAME COLUMN t_county TO turbine_county
ALTER TABLE wind_turbines RENAME COLUMN t_fips TO turbine_fips
ALTER TABLE wind_turbines RENAME COLUMN p_name TO project_name
ALTER TABLE wind_turbines RENAME COLUMN p_year TO project_year
ALTER TABLE wind_turbines RENAME COLUMN p_tnum TO qty_turbines_per_project
ALTER TABLE wind_turbines RENAME COLUMN p_cap TO project_mw_capacity
ALTER TABLE wind_turbines RENAME COLUMN t_manu TO turbine_manufacturer
ALTER TABLE wind_turbines RENAME COLUMN t_model TO turbine_model
ALTER TABLE wind_turbines RENAME COLUMN t_cap TO turbine_output_power
ALTER TABLE wind_turbines RENAME COLUMN t_hh TO "turbine_height(m)"
ALTER TABLE wind_turbines RENAME COLUMN t_rd TO "turbine_rotor_diameter(m)"
ALTER TABLE wind_turbines RENAME COLUMN t_rsa TO "turbine_rotor_swept_area(m squared)"
ALTER TABLE wind_turbines RENAME COLUMN t_ttlh TO "turbine_total_height(m)"
ALTER TABLE wind_turbines RENAME COLUMN retrofit TO "retrofitted?"
ALTER TABLE wind_turbines RENAME COLUMN t_conf_atr TO attri_level_of_confidence
ALTER TABLE wind_turbines RENAME COLUMN t_conf_loc TO location_level_of_confidence
ALTER TABLE wind_turbines RENAME COLUMN t_img_srce TO img_source_for_turbine_location
ALTER TABLE wind_turbines RENAME COLUMN eia_id TO plant_id