rm layer-test.zip
mkdir /lib
pip install --target=lib -r requirements.txt
cd lib
zip -r ../layer-test.zip *
cd ../src
zip -rv ../layer-test.zip *
cd ../
rm -r lib
sls deploy --stage developer
rm -d layer-test.zip
