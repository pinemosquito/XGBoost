# XGBoost

## Installation
```

https://www.ibm.com/developerworks/community/blogs/jfp/entry/Installing_XGBoost_on_Mac_OSX?lang=en
In root directory
git clone --recursive https://github.com/dmlc/xgboost
Change directory into xgboost
cd xgboost
Open make/config.mk and uncomment these two lines
Copy using cp make/config.mk
vi make/config.mk
Uncomment export CC = gcc
Uncomment export CXX = g++
Shift zz to save and exit
cd xgboost; cp make/config.mk ./config.mk; make -j4
clang: error: unsupported option ‘-fopenmp’
After lot of trial and error, i found that I am using gcc 7.1.0 so I need to edit make/config.mk to 
export CC = gcc-7
export CXX = g++-7
Where 7 refers to version of gcc
cd python-package; sudo python setup.py install

```
