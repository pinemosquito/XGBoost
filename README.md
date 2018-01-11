# XGBoost
## is Machine Learning algorithm

## Installation
in root directory
```
git clone --recursive https://github.com/dmlc/xgboost
```

### Build XGBoost 
By default, the build process will use the default compilers, cc and c++, which do not support the open mp option used for XGBoost multi-threading. We need to specify how to compile

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
After lot of trials and errors, I found that I was using gcc7.1.0 

So I need to edit make/config.mk   
```
    export CC = gcc-7
    export CXX = g++-7
```
Where 7 refers to version of gcc


