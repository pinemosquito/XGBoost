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
```


