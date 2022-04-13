# Periphery-Uncertainty-and-Legacy
The paper discusses intercity networks within the former Soviet Union region (FSU), semi-periphery of the global economic system of interactions. Intercity networks are constructed following an assumption that the interaction between offices of the same corporation indicates connectivity between cities. In the FSU, structures of global corporations are determined by continuous uncertainty. Consequently, it is possible to estimate temporal dynamics and spatial distribution of uncertainty through the evolving structures of the global companies drawing on the case of global advanced producer service (APS) companies which are considered as brokers, integrating the region into the global business structures. The dataset comprises structures of the APS firms within the region in 2015 and 2018. Comparing two networks present in 2015 and 2018, authors demonstrate temporal dynamics of network reсonfiguration and unequal spatial distribution of corporate offices in uncertain conditions. Through the lens of the network transformation, the continuous restructuring and peripheralization of the region are revealed.

## SDSM
This repository contains code for stochastic degree sequence model (SDSM), adapted for world city network testing (Neal, 2017)
 
### /code/preprocessing_0.ipynb
This notebook implements the first two steps of the  Neal's SDSM:
1. The Observed World City Network
  A. Apply interlocking world city network model to city-by-firm data to obtain a bossible world city network.
  B. Compute a statistic of interest (node degree) from observed world city network.
2. Factors Impacting Firm Expansion & Location Decisions
  A. Capacity Expand: Number of each size office operated by each firm.
  B. Site Attractiveness: Number of each size operated in each city.
  
### /code/ordered_logistic_regression_1.r
This r file implements third step and part A of fourth step of the Neal's SDSM
3. Firm Expansion and Location Decision Making
  A. Estimate a logistic regression that uses 2.A and 2.B to predict firm's locations in cities.
  B. Use the fitted model to compute the probability that firm f would open an office of size s in city c.
4 A Possible World City Network
  A. Use probabilities 3.B to generate simulated firm office locations (i.e. city-by-firm data)
  
### /code/matrix_processing_2.ipynb
This notebook implements parts B and C of fourth step of Neal's SDSM
4B Apply thi interlocking world city network model to these simulated data to obtain a possible world city network
4C Compute a statistic of interest from the possible world city network

##Data
The data demonstrates presence of the global service companies in the former USSR region. 

"Data tracking 2018" contains information about scores of each office type in each company in 2018. The principles are similar to 2015.
"Output by sector_2015 and 18" contains connectivity by city and by sector in 2015 and 2018, but only for the cities, represented in both 2015 and 2018 networks.

###RawData
"raw_data_2015|raw_data_2018" excel files with initial city-firm matrix

###BySectors
"Data_Advertising" contains data about office structures of global advertising companies in FSU in 2018, each location is rated by it's size and significance in the corporate networks. Also, the data about number of partner offices for companies with large  partnership structures: WPP, Omnicon, and Dentsu, is provided. The locations of global HQs and links of the corporate websites for each company are provided, too.
"Data_Insurance_final" contains data about office structures of global insurance companies in FSU in 2018, each location is rated by it's size and significance in the corporate networks. Also, the data about number of partner offices for VIG company is represented. The locations of global HQs and links of the corporate websites for each company are provided, too.
"Data_Management_final" contains data about office structures of global management companies in FSU in 2018, each location is rated by it's size and significance in the corporate networks. Also, the data about number of partner offices for companies with large  partnership structures: IBM and Marsh&Maclennan, is provided. The locations of global HQs and links of the corporate websites for each company are provided, too.
"Data_Accountancy_final" contains data about office structures of global accountancy companies in FSU in 2018, each location is rated by it's size and significance in the corporate networks.  The locations of global HQs and links of the corporate websites for each company are provided, too.
"Data_Banking_final" contains data about office structures of global banking companies in FSU in 2018, each location is rated by it's size and significance in the corporate networks. Also, the data about number of partner offices for companies with large  partnership structures: UniCredit and Societe Generale is provided. The locations of global HQs and links of the corporate websites for each company are provided, too.
"Data_Law_final" contains data about office structures of global law companies in FSU in 2018, each location is rated by it's size and significance in the corporate networks.  The locations of global HQs and links of the corporate websites for each company are provided, too.
"Data tracking 2018" contains information about scores of each office type in each company in 2018. The principles are similar to 2015. 
