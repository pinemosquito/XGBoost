# XGBoost
## is Machine Learning algorithm

## Installation
in root directory
```
git clone --recursive https://github.com/dmlc/xgboost
```

### Change directory into xgboost

```
cd xgboost
Open make/config.mk and uncomment these two lines
```

### Build XGBoost 
By default, the build process will use the default compilers, cc and c++, which do not support the open mp option used for XGBoost multi-threading.

```
Copy using cp make/config.mk
vi make/config.mk
Uncomment export CC = gcc
Uncomment export CXX = g++
```


