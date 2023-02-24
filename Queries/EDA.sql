-- finding US Operators of turbines --

SELECT
	t.operator_name
	,turbine_state
	,turbine_manufacturer
	,SUM(w.qty_turbines_per_project) as sum_of_turbines
	,SUM(tot_net_MWh_gen_MMBtu) as net_evergy_generation
	,reported_prime_mover
FROM
	turbine_operators t
JOIN
	wind_turbines w
USING
	(plant_id)
WHERE
	t.reported_fuel_type_code ilike 'wnd'
GROUP BY
	1,2,3,6
ORDER BY
	5 DESC

-- total energy generation by operator --
	
SELECT
	t.operator_name
	,SUM(tot_net_MWh_gen_MMBtu) as net_evergy_generation
	,SUM(w.qty_turbines_per_project) as sum_of_turbines
FROM
	turbine_operators t
JOIN
	wind_turbines w
USING
	(plant_id)
WHERE
	t.reported_fuel_type_code ilike 'wnd'
GROUP BY
	1
ORDER BY
	2 DESC

-- adding population to wind turbine table from geocodes table --

SELECT
	w.*
	,g.population
FROM
	wind_turbines w
JOIN
	geocodes g
ON
	w.turbine_fips = g.state_county_fips

-- seeing population and quantity of turbines by county --


SELECT
	DISTINCT t_county county
	,t_state "state"
	,COUNT(p_tnum) "number of turbines"
	,population
FROM
	wind_turbines_new
GROUP BY
	1,2,4
ORDER BY
	3 DESC

-- finding percent of total wind turbines by manufacturer -- 

WITH t1 AS(
    SELECT
        turbine_manufacturer
        ,COUNT(*) AS turbine_count
    FROM 
        public.wind_turbines
    GROUP BY
        1
    ORDER BY
        2 DESC
),
t2 AS(
    SELECT
        count(*) AS total_count
    FROM
        public.wind_turbines
)
SELECT
	t1.turbine_manufacturer
	,CAST(t1.turbine_count AS NUMERIC) / CAST(t2.total_count AS NUMERIC) * 100 AS market_share
FROM
    t1
JOIN
    t2
ON 
	true
GROUP BY
	1,2
ORDER BY
	2 desc;