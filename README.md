# HMCOp-for-voltage-sag-assesment
An Optimized Hamiltonian Monte Carlo (HMCOp) sampler for voltage sag assesment in power systems.

This algorithm uses HMC to calculate the SARFI-0.9 index. The SARFI-0.9 distribution is obtained from a Bayesian inference process where the HMCOp sampler estimates the distribution parameter for each monitoring point using initial samples from the Monte Carlo simulation.

### Requirements
- Matlab >= R2018 

### Description
- **hmcop_voltage_sag.m** - generates the SARFI-0.9 index using a few initial samples from Monte Carlo simulation.  

- **logPosteriorPoisson.m** - function that returns the logarithm of the product of a Poisson likelihood and a Gamma prior for the sampler using Bayesian inference. 

- **sag_data_ieee_24bus** - voltage sag data from IEEE 24 bus system

- **sag_data_1772bus** - voltage sag data from 1772 bus system

### Contact
If you have any question, please email `diogojr1@gmail.com`
