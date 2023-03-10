-- turbine operators table creation --

CREATE TABLE turbine_operators (
	plant_id NUMERIC,
	"combo_heat_and_power_plant?" TEXT,
	plant_name TEXT,
	operator_name TEXT,
	operator_id NUMERIC,
	plant_state TEXT,
	census_region TEXT,
	NERC_region TEXT,
	NAICS_code NUMERIC,
	EIA_sector_num NUMERIC,
	sector_name TEXT,
	reported_prime_mover TEXT,
	reported_fuel_type_code TEXT,
	AER_fuel_type_code TEXT,
	bal_auth_code TEXT,
	respondent_freq TEXT,
	phys_unit_label TEXT,
	tot_fuel_consump_jan NUMERIC,
	tot_fuel_consump_feb NUMERIC,
	tot_fuel_consump_mar NUMERIC,
	tot_fuel_consump_apr NUMERIC,
	tot_fuel_consump_may NUMERIC,
	tot_fuel_consump_jun NUMERIC,
	tot_fuel_consump_jul NUMERIC,
	tot_fuel_consump_aug NUMERIC,
	tot_fuel_consump_sep NUMERIC,
	tot_fuel_consump_oct NUMERIC,
	tot_fuel_consump_nov NUMERIC,
	tot_fuel_consump_dec NUMERIC,
	elec_gen_fuel_consump_jan NUMERIC,
	elec_gen_fuel_consump_feb NUMERIC,
	elec_gen_fuel_consump_mar NUMERIC,
	elec_gen_fuel_consump_apr NUMERIC,
	elec_gen_fuel_consump_may NUMERIC,
	elec_gen_fuel_consump_jun NUMERIC,
	elec_gen_fuel_consump_jul NUMERIC,
	elec_gen_fuel_consump_aug NUMERIC,
	elec_gen_fuel_consump_sep NUMERIC,
	elec_gen_fuel_consump_oct NUMERIC,
	elec_gen_fuel_consump_nov NUMERIC,
	elec_gen_fuel_consump_dec NUMERIC,
	heat_content_MMBtu_jan DECIMAL,
	heat_content_MMBtu_feb DECIMAL,
	heat_content_MMBtu_mar DECIMAL,
	heat_content_MMBtu_apr DECIMAL,
	heat_content_MMBtu_may DECIMAL,
	heat_content_MMBtu_jun DECIMAL,
	heat_content_MMBtu_jul DECIMAL,
	heat_content_MMBtu_aug DECIMAL,
	heat_content_MMBtu_sep DECIMAL,
	heat_content_MMBtu_oct DECIMAL,
	heat_content_MMBtu_nov DECIMAL,
	heat_content_MMBtu_dec DECIMAL,
	tot_MMBtu_consump_jan NUMERIC,
	tot_MMBtu_consump_feb NUMERIC,
	tot_MMBtu_consump_mar NUMERIC,
	tot_MMBtu_consump_apr NUMERIC,
	tot_MMBtu_consump_may NUMERIC,
	tot_MMBtu_consump_jun NUMERIC,
	tot_MMBtu_consump_jul NUMERIC,
	tot_MMBtu_consump_aug NUMERIC,
	tot_MMBtu_consump_sep NUMERIC,
	tot_MMBtu_consump_oct NUMERIC,
	tot_MMBtu_consump_nov NUMERIC,
	tot_MMBtu_consump_dec NUMERIC,
	fuel_consump_elec_MMBtu_jan NUMERIC,
	fuel_consump_elec_MMBtu_feb NUMERIC,
	fuel_consump_elec_MMBtu_mar NUMERIC,
	fuel_consump_elec_MMBtu_apr NUMERIC,
	fuel_consump_elec_MMBtu_may NUMERIC,
	fuel_consump_elec_MMBtu_jun NUMERIC,
	fuel_consump_elec_MMBtu_jul NUMERIC,
	fuel_consump_elec_MMBtu_aug NUMERIC,
	fuel_consump_elec_MMBtu_sep NUMERIC,
	fuel_consump_elec_MMBtu_oct NUMERIC,
	fuel_consump_elec_MMBtu_nov NUMERIC,
	fuel_consump_elec_MMBtu_dec NUMERIC,
	net_MWh_gen_elec_jan NUMERIC,
	net_MWh_gen_elec_feb NUMERIC,
	net_MWh_gen_elec_mar NUMERIC,
	net_MWh_gen_elec_apr NUMERIC,
	net_MWh_gen_elec_may NUMERIC,
	net_MWh_gen_elec_jun NUMERIC,
	net_MWh_gen_elec_jul NUMERIC,
	net_MWh_gen_elec_aug NUMERIC,
	net_MWh_gen_elec_sep NUMERIC,
	net_MWh_gen_elec_oct NUMERIC,
	net_MWh_gen_elec_nov NUMERIC,
	net_MWh_gen_elec_dec NUMERIC,
	tot_fuel_consump_qty NUMERIC,
	elec_fuel_consump_qty NUMERIC,
	tot_fuel_consump_MMBtu NUMERIC,
	tot_elec_fuel_consump_MMBtu NUMERIC,
	tot_net_MWh_gen_MMBtu NUMERIC,
	YEAR INT
)