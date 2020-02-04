#!/bin/bash

##
# Author: Kyle May
# Simple script that setups the environment variables for Modelsim on the CSL
# machines
##


{
## First, insert required environment variables
echo "# <<< CS552 Modelsim configuration >>>" >> ~/.bashrc
echo "export MGC_HOME=/s/mentor-2018/@sys/V10.0BSXE/MGC_HOME.ixl" >> ~/.bashrc
echo "export SDD_HOME=/s/mentor-2018/@sys/V10.0BSXE/SDD_HOME" >> ~/.bashrc
echo "export PATH=$PATH:/s/mentor-2018/@sys/bin:/s/mentor-2018/@sys/bin.pclinux:/s/mentor2018/@sys/V10.0BSXE/MGC_HOME.ixl/bin:/s/mentor-2018/@sys/modelsim_dlx/bin" >> ~/.bashrc
echo "export MGLS_LICENSE_FILE=/s/mentor-2018/etc/cust/mgls/mgc.licenses" >> ~/.bashrc

echo "Finished environment configuration for vsim"
} | tee -a log.out
