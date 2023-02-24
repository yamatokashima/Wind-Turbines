import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

wind_turbines = pd.read_csv('wind_turbines.csv')

wind_turbines.isnull().sum()

wind_turbines.info()

turbine_operators = pd.read_csv('turbine_operators.csv')

turbine_operators.isnull().sum()

us_operators = pd.merge(turbine_operators, wind_turbines, on='plant_id')    # join dataframes
us_operators = us_operators[us_operators['reported_fuel_type_code'].str.lower() == 'wnd']   # filter fuel type to just wind
us_operators = us_operators.groupby(['operator_name', 'turbine_state', 'turbine_manufacturer']).agg(    # group columns
    sum_of_turbines=('qty_turbines_per_project', 'sum'),
    net_evergy_generation=('tot_net_mwh_gen_mmbtu', 'sum')
)

us_operators = us_operators.sort_values(by='net_evergy_generation', ascending=False)    # sort by energy generated

us_operators

energy_per_operator = pd.merge(turbine_operators, wind_turbines, on='plant_id') # join dataframes
energy_per_operator = energy_per_operator[energy_per_operator['reported_fuel_type_code'].str.lower() == 'wnd']  # filter fuel type to just wind
energy_per_operator = energy_per_operator.groupby('operator_name')['tot_net_mwh_gen_mmbtu'].sum().reset_index() # group columns
energy_per_operator = energy_per_operator.sort_values(by='tot_net_mwh_gen_mmbtu', ascending=False)  # sort by energy generated
energy_per_operator = energy_per_operator.rename(columns={'tot_net_mwh_gen_mmbtu': 'net_evergy_generation'})    # rename column
energy_per_operator

df = pd.merge(wind_turbines, geocodes, left_on='turbine_fips', right_on='state_county_fips')    # join dataframes
df = df[['wind_turbines.*', 'population']]  # adding pop data

pop_and_turbines = wind_turbines_new.groupby(['t_county', 't_state', 'population'])['p_tnum'].count().reset_index() # count of turbines and population by county
pop_and_turbines = pop_and_turbines.rename(columns={'t_county': 'county', 't_state': 'state', 'p_tnum': 'number of turbines'})  # rename columns
pop_and_turbines = pop_and_turbines.sort_values(by='number of turbines', ascending=False)   # sorting
pop_and_turbines = pop_and_turbines.drop_duplicates(subset=['county', 'state']) # dropping dups
pop_and_turbines = pop_and_turbines.reset_index(drop=True)  # reset index
pop_and_turbines