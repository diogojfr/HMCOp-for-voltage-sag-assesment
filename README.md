# HMCOp-for-voltage-sag-assesment
An Optimized Hamiltonian Monte Carlo (HMCOp) sampler for voltage sag assesment in power systems.

Voltage sags is a reduction in the RMS voltage for a short period of time, and is one of the most common power quality problems in the industry worldwide, causing millions of dollars in losses annually. 
The proposed algorithm uses HMC to calculate the SARFI-0.9 index, which represents the annual number of voltage sags at a given monitoring point in the power system.
Usually, this index is calculated using Monte Carlo simulation, but it requires a long execution time.
In the proposed method, the SARFI-0.9 distribution is obtained from a Bayesian inference process, where the HMCOp sampler estimates the distribution parameter for each monitoring point using initial samples from the Monte Carlo simulation, reducing the simulation time by 96%. 


This repository is part of a paper published in the International Journal of Electrical Power and Energy Systems. More information is available at:

> D.J.F Reis, and J.E.O Pessanha, “A fast and accurate sampler built on Bayesian inference and optimized Hamiltonian Monte Carlo for voltage sag assessment in power systems”, 
Int. J. Electr. Power Energy Syst., volume 153, 109297, ISSN 0142-0615, doi: https://doi.org/10.1016/j.ijepes.2023.109297, Nov. 2023.   

### Requirements
- Matlab >= R2018 

### Description
- **hmcop_voltage_sag.m** - generates the SARFI-0.9 index using a few initial samples from Monte Carlo simulation.  

- **logPosteriorPoisson.m** - function that returns the logarithm of the product of a Poisson likelihood and a Gamma prior for the sampler using Bayesian inference. 

- **sag_data_ieee_24bus** - voltage sag data from IEEE 24 bus system

- **sag_data_1772bus** - voltage sag data from 1772 bus system

### Contact
If you have any question, please email `diogojr1@gmail.com`
