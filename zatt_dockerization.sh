# change conf file and exposed port in between builds
docker build . -t zat1 --no-cach
docker build . -t zat2 --no-cach

# run on the host network
docker run -d --network=host zat1
docker run -d --network=host zat2

# build and run simple zatt-client
docker build -f Dockerfile.client -t zatt-client --no-cache .
docker run -d --network=host zat-client
