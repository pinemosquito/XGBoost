# XGBoost on Mac OS
### XGBoost (eXtreme Gradient Boosting) is an advanced implementation of gradient boosting trees. 
It is a machine learning algorithm that is very successful at tackling Kaggle's competition.

I was not able to install XGBoost on my Mac until I came across Jean Francois Puget's blog by chance.


## Installation
in root directory
```
git clone --recursive https://github.com/dmlc/xgboost
```

### Compile for multi-threading
By default, Mac OS use cc/cc++ compilers, which do not support open MP option as required by XGBoost multi-threading. We need to specify how to compile

Change directory to XGBoost
```
    cd xgboost
```
First copy this file so that any local changes will be ignored by git
```
 cp make/config.mk
```

Open make/config.mk and modify
```   
    vi make/config.mk
    Uncomment export CC = gcc
    Uncomment export CXX = g++
```
shift zz to save and exit

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
