# XGBoost on Mac OS
### XGBoost (eXtreme Gradient Boosting) is an advanced implementation of gradient boosting algorithm. 
I ran into difficulties installing XGBoost until I found this blog by Jean Francois Puget 


## Installation
in root directory
```
git clone --recursive https://github.com/dmlc/xgboost
```

### Compile for multi-threading
By default, Mac will use cc and cc++ compilers which do not support open mp option used for XGBoost multi-threading. We need to specify how to compile

Change directory to XGBoost
```
    cd xgboost
```
Open make/config.mk and perform these actions
```   
    cp make/config.mk
    vi make/config.mk
    Uncomment export CC = gcc
    Uncomment export CXX = g++
    shift zz to save and exit
```
After lot of trials and errors, I found that I was using gcc 7.1.0. So I need to edit make/config.mk   
```
    export CC = gcc-7
    export CXX = g++-7
```
where 7 refers to version of gcc
### Build XGBoost
```
    cd xgboost; cp make/config.mk ./config.mk; make -j4
```
### Running XGBoost
Once the build is finished, we can use XGBoost with its command line.  I am using Python, hence I performed this final step.  You may need to enter the admin password to execute it.

```
    cd python-package; sudo python setup.py install
```
