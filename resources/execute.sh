#/bin/bash

# file list:
# offliner jar
# manifest
# honeycomb.properties

rm -f -r repository

echo "<<< 2k manifest: start download with default thread, connections 200"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar manifest-2k
echo "<<< 2k manifest: end download with default thread, connections 200"

rm -f -r repository
echo "<<< 2k manifest: start download with default thread, connections 500"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --connections 500 manifest-2k
echo "<<< 2k manifest: end download with default thread, connections 500"

rm -f -r repository
echo "<<< 2k manifest: start download with default thread, connections 1000"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --connections 1000 manifest-2k
echo "<<< 2k manifest: end download with default thread, connections 1000"



rm -f -r repository
echo "<<< 2k manifest: start download with 200 thread, connections 200"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 200 manifest-2k
echo "<<< 2k manifest: end download with 200 thread, connections 200"

rm -f -r repository
echo "<<< 2k manifest: start download with 200 thread, connections 500"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 200 --connections 500 manifest-2k
echo "<<< 2k manifest: end download with 200 thread, connections 500"

rm -f -r repository
echo "<<< 2k manifest: start download with 200 thread, connections 1000"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 200 --connections 1000 manifest-2k
echo "<<< 2k manifest: end download with 200 thread, connections 1000"



rm -f -r repository
echo "<<< 2k manifest: start download with 500 thread, connections 200"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 500 manifest-2k
echo "<<< 2k manifest: end download with 500 thread, connections 200"

rm -f -r repository
echo "<<< 2k manifest: start download with 500 thread, connections 500"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 500 --connections 500 manifest-2k
echo "<<< 2k manifest: end download with 500 thread, connections 500"

rm -f -r repository
echo "<<< 2k manifest: start download with 500 thread, connections 1000"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 500 --connections 1000 manifest-2k
echo "<<< 2k manifest: end download with 200 thread, connections 1000"



rm -f -r repository
echo "<<< 2k manifest: start download with 1000 thread, connections 200"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 1000 manifest-2k
echo "<<< 2k manifest: end download with 1000 thread, connections 200"

rm -f -r repository
echo "<<< 2k manifest: start download with 1000 thread, connections 500"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 1000 --connections 500 manifest-2k
echo "<<< 2k manifest: end download with 1000 thread, connections 500"

rm -f -r repository
echo "<<< 2k manifest: start download with 1000 thread, connections 1000"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 1000 --connections 1000 manifest-2k
echo "<<< 2k manifest: end download with 1000 thread, connections 1000"

rm -f -r repository
echo "<<< 2k manifest: start download with 1000 thread, connections 1500"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 1000 --connections 1500 manifest-2k
echo "<<< 2k manifest: end download with 1000 thread, connections 1500"

rm -f -r repository
echo "<<< 2k manifest: start download with 1000 thread, connections 2000"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 1000 --connections 2000 manifest-2k
echo "<<< 2k manifest: end download with 1000 thread, connections 2000"

rm -f -r repository
echo "<<< 2k manifest: start download with 1000 thread, connections 2500"
java -Dhoneycomb=honeycomb.properties -jar offliner-2.0-SNAPSHOT.jar --threads 1000 --connections 2500 manifest-2k
echo "<<< 2k manifest: end download with 1000 thread, connections 2500"
