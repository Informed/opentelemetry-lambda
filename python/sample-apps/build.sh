#!/bin/sh

echo "------- sampel-apps build -------"
mkdir -p build/python
python3 -m pip install -r function/requirements.txt -t build/python
cp function/lambda_function.py build/python
cd build/python || exit
zip -r ../function.zip *
