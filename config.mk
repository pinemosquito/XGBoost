#-----------------------------------------------------
#  xgboost: the configuration compile script
#
#  If you want to change the configuration, please use the following
#  steps. Assume you are on the root directory of xgboost.
#  First copy this file so that any local changes will be ignored by git
#
#  $ cp make/config.mk .
#
#  Next modify the according entries in the copied file and then compile by
#
#  $ make
#
#  or build in parallel with 8 threads
#
#  $ make -j8
#----------------------------------------------------

# choice of compiler, by default use system preference.
export CC = gcc-7
export CXX = g++-7
# export MPICXX = mpicxx

"make/config.mk" 83L, 2332C
