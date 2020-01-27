# CS 552 Setup Tutorial
This document will detail all of the steps required to properly use Modelsim on the CSL computers. We are assuming that you already have a CS account, so if this is not the case, please let us know.
These steps are from the original tutorial, found in `original/Modelsim_setup_S19_tutorial.pdf`.

The steps are as follows:
1. Install required software in order to ssh to CSL machines and enable X-forwarding.
2. Clone this repo in order to get test Verilog code and configuration script.
3. Run configuration script.
4. Use ModelSim to run test code.

## Software for SSH and X-forwarding
For Mac and Windows machines, go [here](https://sites.google.com/wisc.edu/modelsim-x-forwarding) for the required steps. For Linux machines, they typically will not require any further software to do this properly.

For Macs, from this point on, if you want to use the GUI for Modelsim, you will need to ssh into the CSL machine using the terminal application provided by XQuartz. Since this terminal is not pleasant looking, I typically ssh in with a native terminal and then only use XQuartz terminal when I need to launch a GUI.

Now, you can ssh on to the CSL machine using the following command.
    $ ssh -XY <CS username>@best-linux.cs.wisc.edu

## Clone this repo
In order to clone this repo, run the following command in the terminal on the CSL machine (so you have already ssh'd in).

    $ git clone https://github.com/kyle-p-may/cs552-modelsim-tutorial.git 
    $ cd cs552-modelsim-tutorial

Now, you should be able to see all of the files in this repo. If you do not see any files, or `cd` fails, please let us know.

## Run configuration script
The following configuration script will setup environment variables in order for you to have access to Modelsim. Please look at this script briefly, then run the following commands.

    $ chmod +x config/config.sh # make this file executable
    $ ./config/config.sh # Run configuration

Check `log.out` to make sure that there are no error messages.

## Using Modelsim
1. To run your simulation, you will need to create a project. Click on File -> New -> Project. You will see the window presented below.Choose a location for your new project andgive it the name. Leave the other settings to their default. This just says that all code will be compiled into the library "work". 

![Step 1 Figure](https://github.com/kyle-p-may/cs552-modelsim-tutorial/blob/master/figures/step5.png)
